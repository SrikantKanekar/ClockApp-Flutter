import 'package:clock_app/common/app/config.dart';

class AppDuration {
  AppDuration._internal(this._appDuration);

  factory AppDuration._init() {
    late AppDuration appDuration;
    if (__instance != null) {
      appDuration = __instance!;
    } else {
      if (AppConfig.appMode == AppMode.unit) {
        appDuration = AppDuration._internal(_UnitTestDuration());
      } else {
        appDuration = AppDuration._internal(_AppDuration());
      }
    }
    return appDuration;
  }

  final _AppDuration _appDuration;

  static AppDuration? __instance;

  static AppDuration get _instance =>
      __instance ?? (__instance = AppDuration._init());

  static Duration get duration1 => _instance._appDuration.duration1;
}

class _AppDuration {
  Duration get duration1 => const Duration(seconds: 1);
}

class _UnitTestDuration extends _AppDuration {
  @override
  Duration get duration1 => const Duration(seconds: 0);
}
