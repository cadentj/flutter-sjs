import 'package:flutter/material.dart';
import 'views/app.dart';

void main() => runApp(const MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter App';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: App(),
    );
  }
}

