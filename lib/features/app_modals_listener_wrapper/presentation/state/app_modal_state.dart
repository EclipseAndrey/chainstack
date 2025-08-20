import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_modal_state.freezed.dart';

class AppModalCubit extends Cubit<AppModalState> {
  AppModalCubit(super.initialState);

  void showModal() => emit(const AppModalShown());

  void hideModal() => emit(const AppModalHidden());
}

@freezed
class AppModalState with _$AppModalState {
  const factory AppModalState.hidden() = AppModalHidden;

  const factory AppModalState.shown({params}) = AppModalShown;
}
