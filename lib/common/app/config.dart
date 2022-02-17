enum AppMode { release, development, unit }

class AppConfig {
  AppConfig._internal();

  factory AppConfig.init(AppConfigBuilder builder) {
    if (__instance != null) {
      return __instance!;
    } else {
      return __instance = builder.build();
    }
  }

  static AppConfig? __instance;

  static AppConfig get _instance =>
      __instance ?? (throw Exception('AppConfig has not initialized yet!'));

  AppMode _appMode = AppMode.development;

  static AppMode get appMode => _instance._appMode;
}

class AppConfigBuilder {
  AppConfigBuilder() : _appConfig = AppConfig._internal();
  final AppConfig _appConfig;

  AppConfig build() => _appConfig;

  AppConfigBuilder setAppMode(AppMode appMode) =>
      this.._appConfig._appMode = appMode;
}
