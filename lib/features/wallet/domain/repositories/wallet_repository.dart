import 'package:chainstack/core/error/api_handler.dart';
import 'package:chainstack/core/error/either.dart';
import 'package:chainstack/core/error/x_error.dart';
import 'package:chainstack/features/wallet/data/datasources/blockstream_remote_data_source.dart';
import 'package:chainstack/features/wallet/data/datasources/chainstack_rpc_data_source.dart';
import 'package:chainstack/features/wallet/data/models/address_info_dto.dart';
import 'package:chainstack/features/wallet/data/models/address_tx_dto.dart';
import 'package:chainstack/features/wallet/data/models/get_blockchain_info_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

typedef DataStream<T> = Stream<Either<XError, T>>;
typedef DataFuture<T> = Future<Either<XError, T>>;

/// Контракт репозитория кошелька
abstract class IWalletRepository {
  DataStream<int?> get balanceSats$;
  DataStream<List<AddressTxDto>?> get txs$;
  DataStream<GetBlockchainInfoDto?> get nodeInfo$;

  Future<void> update({required String address, int txLimit = 30});

  DataFuture<int> getBalanceSats(String address);
  DataFuture<List<AddressTxDto>> getAddressTxs(String address, {int limit = 30});
  DataFuture<List<AddressTxDto>> getAddressTxsNextPage(
    String address, {
    required String lastSeenTxid,
    int pageLimit = 30,
  });
  DataFuture<GetBlockchainInfoDto> getNodeInfo();

  Future<void> dispose();
}

@Singleton(as: IWalletRepository)
class WalletRepository implements IWalletRepository {
  final IBlockstreamRemoteDataSource _blockstream;
  final IChainstackRpcDataSource _rpc;

  WalletRepository(this._blockstream, this._rpc);

  // ====== streams ======
  final _balanceSatsSubject = BehaviorSubject<Either<XError, int?>>.seeded(const Either.right(null));

  final _txsSubject = BehaviorSubject<Either<XError, List<AddressTxDto>?>>.seeded(const Either.right(null));

  final _nodeInfoSubject = BehaviorSubject<Either<XError, GetBlockchainInfoDto?>>.seeded(const Either.right(null));

  @override
  DataStream<int?> get balanceSats$ => _balanceSatsSubject.stream;

  @override
  DataStream<List<AddressTxDto>?> get txs$ => _txsSubject.stream;

  @override
  DataStream<GetBlockchainInfoDto?> get nodeInfo$ => _nodeInfoSubject.stream;

  // ====== public API ======

  @override
  Future<void> update({required String address, int txLimit = 30}) async {
    // Баланс — пушим только Right
    final bal = await getBalanceSats(address);
    if (bal.isRight) {
      _balanceSatsSubject.add(bal);
    }

    final txs = await getAddressTxs(address, limit: txLimit);
    if (txs.isRight) {
      _txsSubject.add(txs);
    }

    final info = await getNodeInfo();
    if (info.isRight) {
      _nodeInfoSubject.add(info);
    }
  }

  @override
  DataFuture<int> getBalanceSats(String address) async {
    return ApiHandler.handleNoBody<int>(() async {
      final AddressInfoDto dto = await _blockstream.getAddressInfo(address);
      final funded = dto.chainStats.fundedTxoSum;
      final spent = dto.chainStats.spentTxoSum;
      return funded - spent;
    });
  }

  @override
  DataFuture<List<AddressTxDto>> getAddressTxs(String address, {int limit = 30}) async {
    return ApiHandler.handleNoBody<List<AddressTxDto>>(() => _blockstream.getAddressTxs(address, limit: limit));
  }

  @override
  DataFuture<List<AddressTxDto>> getAddressTxsNextPage(
    String address, {
    required String lastSeenTxid,
    int pageLimit = 30,
  }) async {
    final nextEither = await ApiHandler.handleNoBody<List<AddressTxDto>>(
      () => _blockstream.getAddressTxs(address, limit: pageLimit, lastSeenTxid: lastSeenTxid),
    );

    if (nextEither.isLeft) {
      return Either.left(nextEither.left);
    }

    final next = nextEither.right;

    final prevEither = _txsSubject.valueOrNull;
    List<AddressTxDto> prev = const <AddressTxDto>[];
    if (prevEither != null && prevEither.isRight) {
      final maybePrev = prevEither.right; // List<AddressTxDto>?
      prev = maybePrev ?? const <AddressTxDto>[];
    }

    final seen = <String>{for (final t in prev) t.txid};
    final merged = <AddressTxDto>[...prev, ...next.where((t) => seen.add(t.txid))];

    _txsSubject.add(Either.right(merged));

    return Either.right(merged);
  }

  @override
  DataFuture<GetBlockchainInfoDto> getNodeInfo() async {
    return ApiHandler.handleNoBody<GetBlockchainInfoDto>(() => _rpc.getBlockchainInfo());
  }

  @override
  Future<void> dispose() async {
    await _balanceSatsSubject.close();
    await _txsSubject.close();
    await _nodeInfoSubject.close();
  }
}
