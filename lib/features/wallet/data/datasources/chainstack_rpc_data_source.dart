import 'package:chainstack/core/http/data_source_exception.dart';
import 'package:chainstack/core/http/dio_module.dart';
import 'package:chainstack/features/wallet/data/models/get_blockchain_info_dto.dart';
import 'package:chainstack/features/wallet/data/models/json_rpc_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract interface class IChainstackRpcDataSource {
  Future<GetBlockchainInfoDto> getBlockchainInfo({CancelToken? cancelToken});
}

@LazySingleton(as: IChainstackRpcDataSource)
class ChainstackRpcDataSource implements IChainstackRpcDataSource {
  final Dio _dio;

  ChainstackRpcDataSource(@Named(DioKeys.rpc) this._dio);

  Future<Map<String, dynamic>> _call(String method, {List<dynamic> params = const [], CancelToken? cancelToken}) async {
    try {
      final body = <String, dynamic>{'jsonrpc': '1.0', 'id': 'wallet_demo', 'method': method, 'params': params};

      final resp = await _dio.post<Map<String, dynamic>>(
        '', // baseUrl уже указывает на RPC endpoint
        data: body,
        cancelToken: cancelToken,
      );

      final dto = JsonRpcResponseDto.fromJson(resp.data!);
      if (dto.error != null) {
        throw DataSourceException('RPC error ${dto.error!.code}: ${dto.error!.message}', statusCode: resp.statusCode);
      }
      final result = dto.result;
      if (result is Map<String, dynamic>) return result;
      throw DataSourceException('Unexpected RPC result type: ${result.runtimeType}');
    } on DioException catch (e) {
      rethrowAsDataSource(e);
    }
  }

  @override
  Future<GetBlockchainInfoDto> getBlockchainInfo({CancelToken? cancelToken}) async {
    final map = await _call('getblockchaininfo', cancelToken: cancelToken);
    return GetBlockchainInfoDto.fromJson(map);
  }
}
