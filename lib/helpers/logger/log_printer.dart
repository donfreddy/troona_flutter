import 'package:logger/logger.dart';

class SimpleLogPrinter extends LogPrinter {
  final String className;

  SimpleLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    var color = PrettyPrinter.levelColors[event.level];
    var output = '$className - ${event.message}';

    List<String> result = [];

    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk

    for (var line in output.split('\n')) {
      result.addAll(
        pattern.allMatches(line).map(
          (match) {
            return color!(match.group(0) ?? '');
          },
        ),
      );
    }

    return result;
  }
}
