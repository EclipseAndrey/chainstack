// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/http/dio_module.dart' as _i111;
import '../core/infrastructure/internet_checker/domain/repositories/connectivity_repository.dart'
    as _i547;
import '../core/infrastructure/internet_checker/presentation/state/internet_check_cubit/internet_check_cubit.dart'
    as _i210;
import '../core/storage/local_storage.dart' as _i449;
import '../core/storage/secure_storage_module.dart' as _i555;
import '../core/x_logger/x_logger.dart' as _i555;
import '../core/x_logger/x_logger_bloc_observer.dart' as _i580;
import '../features/app_modals_listener_wrapper/modals/domain/modals_repository.dart'
    as _i635;
import '../features/app_modals_listener_wrapper/modals/presentation/state/modal_bloc.dart'
    as _i1072;
import '../features/app_modals_listener_wrapper/toasts/data/repositories/toasts_repository.dart'
    as _i967;
import '../features/app_modals_listener_wrapper/toasts/domain/repositories/toasts_repository.dart'
    as _i586;
import '../features/app_modals_listener_wrapper/toasts/presentation/state/toast_bloc.dart'
    as _i578;
import '../features/history/presentation/state/history_bloc/history_bloc.dart'
    as _i576;
import '../features/wallet/data/datasources/blockstream_remote_data_source.dart'
    as _i1043;
import '../features/wallet/data/datasources/chainstack_rpc_data_source.dart'
    as _i259;
import '../features/wallet/domain/repositories/wallet_repository.dart' as _i620;
import '../features/wallet/presentation/state/wallet_bloc/wallet_bloc.dart'
    as _i19;
import '../features/withdrawal/domain/repositories/withdrawal_repository.dart'
    as _i367;
import '../features/withdrawal/presentation/state/withdrawal_bloc.dart'
    as _i495;
import '../shared/utils/haptik_feedback/haptic_service.dart' as _i484;
import 'env/environment_model.dart' as _i1058;
import 'router/models/guard_notifier.dart' as _i1022;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final dioModule = _$DioModule();
  gh.singleton<_i547.IConnectivityRepository>(
    () => _i547.ConnectivityRepository(),
  );
  gh.singleton<_i555.ISecureStorage>(() => _i555.SecureStorage());
  gh.singleton<_i449.ILocalStorage>(() => _i449.LocalStorage());
  gh.factory<_i367.IWithdrawalRepository>(() => _i367.WithdrawalRepository());
  gh.singleton<_i555.IXLogger>(() => _i555.XLoggerCore());
  gh.singleton<_i586.IToastsRepository>(
    () => _i967.NotificationsRepository(),
    dispose: _i967.disposeRepository,
  );
  gh.factory<_i210.InternetCheckCubit>(
    () => _i210.InternetCheckCubit(gh<_i547.IConnectivityRepository>()),
  );
  gh.lazySingleton<_i361.Dio>(
    () => dioModule.dioBase(
      gh<_i1058.AppEnvironment>(),
      gh<_i547.IConnectivityRepository>(),
    ),
    instanceName: 'baseDio',
  );
  gh.factory<_i578.ToastBloc>(
    () => _i578.ToastBloc(gh<_i586.IToastsRepository>()),
  );
  gh.lazySingleton<_i361.Dio>(
    () => dioModule.dioRpc(
      gh<_i1058.AppEnvironment>(),
      gh<_i547.IConnectivityRepository>(),
    ),
    instanceName: 'rpcDio',
  );
  gh.singleton<_i1022.IGuardNotifier>(() => _i1022.GuardNotifier());
  gh.factory<_i484.IHapticService>(() => _i484.HapticService());
  gh.singleton<_i635.IModalsRepository>(
    () => _i635.ModalsRepository(),
    dispose: _i635.disposeRepository,
  );
  gh.singleton<_i580.XLoggerBlocObserver>(
    () => _i580.XLoggerBlocObserver(gh<_i555.IXLogger>()),
  );
  gh.lazySingleton<_i1043.IBlockstreamRemoteDataSource>(
    () => _i1043.BlockstreamRemoteDataSource(
      gh<_i361.Dio>(instanceName: 'baseDio'),
    ),
  );
  gh.factory<_i1072.ModalBloc>(
    () => _i1072.ModalBloc(gh<_i635.IModalsRepository>()),
  );
  gh.lazySingleton<_i259.IChainstackRpcDataSource>(
    () => _i259.ChainstackRpcDataSource(gh<_i361.Dio>(instanceName: 'rpcDio')),
  );
  gh.singleton<_i620.IWalletRepository>(
    () => _i620.WalletRepository(
      gh<_i1043.IBlockstreamRemoteDataSource>(),
      gh<_i259.IChainstackRpcDataSource>(),
    ),
  );
  gh.factory<_i495.WithdrawalBloc>(
    () => _i495.WithdrawalBloc(
      gh<_i367.IWithdrawalRepository>(),
      gh<_i620.IWalletRepository>(),
    ),
  );
  gh.factory<_i19.WalletBloc>(
    () => _i19.WalletBloc(
      gh<_i620.IWalletRepository>(),
      gh<_i1058.AppEnvironment>(),
    ),
  );
  gh.factory<_i576.HistoryBloc>(
    () => _i576.HistoryBloc(
      gh<_i620.IWalletRepository>(),
      gh<_i1058.AppEnvironment>(),
    ),
  );
  return getIt;
}

class _$DioModule extends _i111.DioModule {}
