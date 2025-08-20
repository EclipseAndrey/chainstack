import 'package:chainstack/core/storage/secure_storage_module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const isFirstLaunchKey = 'is_first_launch';

abstract class ILocalStorage {
  Future<void> init();
  T? read<T>(String key);

  bool contains(String key);

  Future<void> write<T>(String key, T? value);

  Future<bool> containsAsync(String key);
}

@Singleton(as: ILocalStorage)
class LocalStorage implements ILocalStorage {
  late final SharedPreferences _sharedPreferences;

  @override
  bool contains(String key) => _sharedPreferences.containsKey(key);

  @override
  T? read<T>(String key) => _sharedPreferences.get(key) as T?;

  @override
  Future<bool> containsAsync(String key) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.containsKey(key);
  }

  @override
  Future<void> write<T>(String key, T? value) async {
    if (value == null) {
      await _sharedPreferences.remove(key);
      return;
    }
    switch (T) {
      case const (int):
        await _sharedPreferences.setInt(key, value as int);
        break;
      case const (String):
        await _sharedPreferences.setString(key, value as String);
        break;
      case const (bool):
        await _sharedPreferences.setBool(key, value as bool);
        break;
      case const (double):
        await _sharedPreferences.setDouble(key, value as double);
        break;
    }
  }

  @override
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();

    // FlutterSecureStorage не удаляет свои данные после удаления приложения в связи спицифики реализации
    // здесь мы отчищаем защищенное хранилище если приложение переустановили
    final isFirstLaunch = !_sharedPreferences.containsKey(isFirstLaunchKey);
    if (isFirstLaunch) {
      await GetIt.I.get<ISecureStorage>().deleteAll();
    }
  }
}
