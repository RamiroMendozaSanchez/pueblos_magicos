import 'package:flutter/material.dart';
import 'package:pueblos_magicos/navigator.dart';
import 'package:pueblos_magicos/screens/first_screen.dart';

import 'screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBar(),
    );
  }
}
