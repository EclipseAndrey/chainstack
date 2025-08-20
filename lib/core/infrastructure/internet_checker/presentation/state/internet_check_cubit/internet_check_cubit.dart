import 'dart:async';
import 'package:chainstack/core/infrastructure/internet_checker/domain/repositories/connectivity_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'internet_check_cubit.freezed.dart';

@freezed
sealed class InternetCheckState with _$InternetCheckState {
  const factory InternetCheckState({required bool isConnectedToNetwork, required bool hasRealInternet}) =
      _InternetCheckState;

  factory InternetCheckState.initial() => const InternetCheckState(isConnectedToNetwork: true, hasRealInternet: true);
}

@injectable
class InternetCheckCubit extends Cubit<InternetCheckState> {
  final IConnectivityRepository _connectivityRepository;
  late final StreamSubscription<bool> _subscription;

  InternetCheckCubit(this._connectivityRepository) : super(InternetCheckState.initial()) {
    _subscription = _connectivityRepository.isOnlineStream.listen((hasInternet) {
      // Предполагаем: если есть интернет, значит и соединение с сетью есть
      emit(InternetCheckState(isConnectedToNetwork: hasInternet, hasRealInternet: hasInternet));
    });
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
