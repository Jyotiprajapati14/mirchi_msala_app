import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mirchi Msala',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
