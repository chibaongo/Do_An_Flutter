import 'package:flutter/material.dart';
import 'package:flutter_application_2/DangNhap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yako App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        //'welcome': (context) => WelcomeScreen(),
        'home': (context) => const DangNhap(
              title: 'man hinh dang',
            ),
      },
    );
  }
}
