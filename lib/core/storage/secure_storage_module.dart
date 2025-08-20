import 'package:chainstack/core/x_logger/x_logger.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class ISecureStorage {
  Future<String?> read(String key);
  Future<void> write(String key, String? value);
  Future<void> delete(String key);
  Future<void> deleteAll();
}

@Singleton(as: ISecureStorage)
class SecureStorage implements ISecureStorage {
  static const _iosOptions = IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device);
  static const _aOptions = AndroidOptions(encryptedSharedPreferences: true);
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage(aOptions: _aOptions, iOptions: _iosOptions);

  @override
  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }

  @override
  Future<String?> read(String key) async {
    try {
      return await _secureStorage.read(key: key);
    } on Object catch (e, st) {
      logE(e, st);

      return null;
    }
  }

  @override
  Future<void> write(String key, String? value) async {
    try {
      return _secureStorage.write(key: key, value: value);
    } on Object catch (e, st) {
      logE(e, st);
    }
  }

  @override
  Future<void> delete(String key) {
    return _secureStorage.delete(key: key);
  }
}
