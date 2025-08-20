// lib/core/env/app_environment.dart
import 'dart:convert';
import 'package:chainstack/app/env/flavors.dart';
import 'package:flutter/foundation.dart';

@immutable
class AppEnvironment {
  /// Базовый индексатор адресов (Blockstream/Mempool-space и т.п.)
  final Uri indexerBase;

  /// RPC-узел Chainstack (Bitcoin Core JSON-RPC).
  final Uri chainstackRpcUrl;

  /// Необязательные креды к Chainstack (Basic Auth).
  final String? chainstackUser;
  final String? chainstackPass;

  /// Сеть Bitcoin: mainnet / testnet / regtest (для отображения и проверок).
  final String btcNetwork;

  /// Адрес по умолчанию (для тестового задания).
  final String defaultAddress;

  /// Таймауты HTTP-клиента.
  final Duration connectTimeout;
  final Duration receiveTimeout;

  /// Флаги для отладки/логов.
  final bool enableNetworkLogging;

  /// Произвольная «метка» окружения.
  final Flavor flavor; // dev / stage / prod и т.п.

  const AppEnvironment({
    required this.indexerBase,
    required this.chainstackRpcUrl,
    required this.btcNetwork,
    required this.defaultAddress,
    this.chainstackUser,
    this.chainstackPass,
    this.connectTimeout = const Duration(seconds: 15),
    this.receiveTimeout = const Duration(seconds: 20),
    this.enableNetworkLogging = false,
    this.flavor = Flavor.dev,
  });

  /// Удобный Basic Auth заголовок для Chainstack (если заданы креды).
  String? get chainstackBasicAuthHeader {
    if ((chainstackUser ?? '').isEmpty && (chainstackPass ?? '').isEmpty) return null;
    final raw = '${chainstackUser ?? ''}:${chainstackPass ?? ''}';
    return 'Basic ${base64Encode(utf8.encode(raw))}';
  }

  static AppEnvironment dev = AppEnvironment(
    indexerBase: Uri.parse('https://blockstream.info/testnet/api'),
    chainstackRpcUrl: Uri.parse('https://bitcoin-testnet.core.chainstack.com/c245901880751bf045ddfdcd3d90d6b1'),
    btcNetwork: 'testnet',
    defaultAddress: 'tb1ql9eghhlyn3pd3z749ygzek0rgfz5a2kggy0tu6',
    enableNetworkLogging: true,
    flavor: Flavor.dev,
  );
}
