import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/DangNhap.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        //'welcome': (context) => WelcomeScreen(),
        'home': (context) => DangNhap(),
      },
    );
  }
}
