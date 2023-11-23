import 'package:flutter/material.dart';
import 'User/Request/mainmap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainMap(),
    );
  }
}
