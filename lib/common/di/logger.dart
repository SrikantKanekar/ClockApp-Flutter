import 'package:flutter/foundation.dart';

Logger createLogger({required String tag}) {
  return Logger(tag: tag);
}

class Logger {
  Logger._internal(this.tag);

  factory Logger({required String tag}) {
    if(_loggers.containsKey(tag)){
      return _loggers[tag]!;
    } else {
      final logger = Logger._internal(tag);
      _loggers[tag] = logger;
      return logger;
    }
  }

  static final Map<String, Logger> _loggers = {};
  final String tag;

  void log(String message) {
    if (kDebugMode) {
      print('$tag: $message');
    }
  }
}
