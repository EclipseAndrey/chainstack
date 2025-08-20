import 'package:chainstack/core/error/either.dart';
import 'package:chainstack/core/error/x_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chainstack/features/wallet/data/models/address_tx_dto.dart';

part 'history_models.freezed.dart';

@freezed
abstract class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.refresh({@Default(30) int limit}) = HistoryRefreshEvent;

  const factory HistoryEvent.loadMore({@Default(30) int pageLimit}) = HistoryLoadMoreEvent;

  const factory HistoryEvent.updated(Either<XError, List<AddressTxDto>?> data) = HistoryUpdatedEvent;
}

@freezed
sealed class HistoryState with _$HistoryState {
  const factory HistoryState.loading() = HistoryLoadingState;

  const factory HistoryState.loaded({
    @Default(<AddressTxDto>[]) List<AddressTxDto> items,
    String? lastSeenTxid,
    @Default(false) bool paging,
    @Default(false) bool refreshing,
    @Default(true) bool canLoadMore,
    XError? error,
  }) = HistoryLoadedState;

  const factory HistoryState.error(XError error) = HistoryErrorState;
}
