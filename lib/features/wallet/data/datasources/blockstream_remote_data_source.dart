import 'package:chainstack/core/http/data_source_exception.dart';
import 'package:chainstack/core/http/dio_module.dart';
import 'package:chainstack/features/wallet/data/models/address_info_dto.dart';
import 'package:chainstack/features/wallet/data/models/address_tx_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract interface class IBlockstreamRemoteDataSource {
  Future<AddressInfoDto> getAddressInfo(String address, {CancelToken? cancelToken});

  /// Последние транзакции по адресу. Можно ограничить limit,
  /// а для пагинации использовать lastSeenTxid.
  Future<List<AddressTxDto>> getAddressTxs(
    String address, {
    int? limit,
    String? lastSeenTxid,
    CancelToken? cancelToken,
  });
}

@LazySingleton(as: IBlockstreamRemoteDataSource)
class BlockstreamRemoteDataSource implements IBlockstreamRemoteDataSource {
  final Dio _dio;

  BlockstreamRemoteDataSource(@Named(DioKeys.base) this._dio);

  @override
  Future<AddressInfoDto> getAddressInfo(String address, {CancelToken? cancelToken}) async {
    try {
      final resp = await _dio.get<Map<String, dynamic>>('/address/$address', cancelToken: cancelToken);
      return AddressInfoDto.fromJson(resp.data!);
    } on DioException catch (e) {
      rethrowAsDataSource(e);
    }
  }

  @override
  Future<List<AddressTxDto>> getAddressTxs(
    String address, {
    int? limit,
    String? lastSeenTxid,
    CancelToken? cancelToken,
  }) async {
    try {
      final query = <String, dynamic>{};
      if (lastSeenTxid != null) {
        final resp = await _dio.get<List<dynamic>>(
          '/address/$address/txs/chain/$lastSeenTxid',
          cancelToken: cancelToken,
        );
        final list = resp.data ?? const [];
        final mapped = list.map((e) => AddressTxDto.fromJson(e as Map<String, dynamic>)).toList();
        return (limit != null && mapped.length > limit) ? mapped.take(limit).toList() : mapped;
      }

      final resp = await _dio.get<List<dynamic>>(
        '/address/$address/txs',
        queryParameters: query,
        cancelToken: cancelToken,
      );
      final list = resp.data ?? const [];
      final mapped = list.map((e) => AddressTxDto.fromJson(e as Map<String, dynamic>)).toList();
      return (limit != null && mapped.length > limit) ? mapped.take(limit).toList() : mapped;
    } on DioException catch (e) {
      rethrowAsDataSource(e);
    }
  }
}
