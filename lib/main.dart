import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(
    MyApp()
  );
}
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        width: 300, 
        child: new LoginScreen(),
      ), 
    );
  }
}

