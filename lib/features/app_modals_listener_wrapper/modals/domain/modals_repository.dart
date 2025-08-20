import 'dart:async';

import 'package:chainstack/shared/widgets/x_modal_bottom_sheet/x_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

abstract class IModalsRepository {
  Stream<XModalData?> get modalsStream;

  Future<void> showModal(XModal? modal, {int delay = 150, bool aboveAllScreens = false});

  void dispose();
}

@Singleton(as: IModalsRepository, dispose: disposeRepository)
class ModalsRepository implements IModalsRepository {
  final BehaviorSubject<XModalData?> _modalsStream = BehaviorSubject.seeded(null);

  @override
  Stream<XModalData?> get modalsStream => _modalsStream;

  ModalsRepository();

  @override
  void dispose() {
    _modalsStream.close();
  }

  @override
  Future<void> showModal(XModal? modal, {int delay = 150, bool aboveAllScreens = false}) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_modalsStream.value?.modal != modal) {
      await Future.delayed(Duration(milliseconds: delay));
      _modalsStream.add(XModalData(modal: modal, aboveAllScreens: aboveAllScreens));
    }
  }
}

FutureOr disposeRepository(IModalsRepository instance) {
  instance.dispose();
}

class XModalData {
  final XModal? modal;
  final bool aboveAllScreens;

  XModalData({required this.modal, required this.aboveAllScreens});
}
