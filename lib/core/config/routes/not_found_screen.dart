import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class NotFoundScreen extends StatelessWidget {
  final String? name;

  const NotFoundScreen({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Route $name not found'),
      ),
    );
  }
}
