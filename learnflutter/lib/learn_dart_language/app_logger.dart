import 'package:flutter/foundation.dart'; // Import để sử dụng debugPrint

class Logger {
  /// Cờ (flag) để bật/tắt log trong môi trường development.
  static const bool _shouldLog = kDebugMode;

  /// In thông báo thông thường.
  static void log(dynamic message) {
    if (_shouldLog) {
      debugPrint('[LOG] $message');
    }
  }

  /// In thông báo lỗi.
  static void error(dynamic message) {
    if (_shouldLog) {
      debugPrint('[ERROR] $message');
    }
  }

  /// In thông báo cảnh báo.
  static void warning(dynamic message) {
    if (_shouldLog) {
      debugPrint('[WARNING] $message');
    }
  }
}