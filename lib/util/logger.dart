import 'package:talker_logger/talker_logger.dart';

abstract class Logger {
  static final _logger = TalkerLogger();

  static void debug(dynamic message) {
    _logger.debug(message);
  }

  static void info(dynamic message) {
    _logger.info(message);
  }

  static void warning(dynamic message) {
    _logger.warning(message);
  }

  static void error(dynamic message) {
    _logger.error(message);
  }
}
