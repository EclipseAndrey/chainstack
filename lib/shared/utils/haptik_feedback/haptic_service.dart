import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

abstract class IHapticService {
  Future<void> lightImpact();
}

@Injectable(as: IHapticService)
class HapticService implements IHapticService {
  @override
  Future<void> lightImpact() async {
    try {
      await HapticFeedback.lightImpact();
    } on PlatformException catch (_) {}
  }
}
