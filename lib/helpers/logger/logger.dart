import 'package:logger/logger.dart';

import 'log_printer.dart';

Logger getLogger(String className) {
  return Logger(printer: SimpleLogPrinter(className));
}
