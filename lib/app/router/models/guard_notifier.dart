import 'package:chainstack/shared/utils/debounce/debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

abstract class IGuardNotifier extends Listenable {
  void notify();
}

@Singleton(as: IGuardNotifier)
class GuardNotifier extends ChangeNotifier implements IGuardNotifier {
  @override
  void notify() {
    Debounce.setup('notifyGuards', const Duration(milliseconds: 50), notifyListeners);
  }
}
