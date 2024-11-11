import 'package:flutter/material.dart';
import 'package:tab_bar_example/di/setup_locator.dart';
import 'package:tab_bar_example/screens/main_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar with MVVM Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}
