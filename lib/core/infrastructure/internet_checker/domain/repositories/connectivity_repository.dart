import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

abstract class IConnectivityRepository {
  Stream<bool> get isOnlineStream;
  bool get isOnline;
  void setOnline(bool value);
  Future<List<ConnectivityResult>> checkConnectivity();
}

@Singleton(as: IConnectivityRepository)
class ConnectivityRepository implements IConnectivityRepository {
  final BehaviorSubject<bool> _controller = BehaviorSubject.seeded(true);

  @override
  Stream<bool> get isOnlineStream => _controller.stream;

  @override
  bool get isOnline => _controller.value;

  @override
  void setOnline(bool value) {
    if (_controller.value != value) {
      _controller.add(value);
    }
  }

  @override
  Future<List<ConnectivityResult>> checkConnectivity() {
    return Connectivity().checkConnectivity();
  }
}
