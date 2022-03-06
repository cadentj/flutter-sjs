import 'package:flutter/material.dart';
import 'views/app.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: App(),
    );
  }
}

