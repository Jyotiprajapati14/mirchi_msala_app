import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mirchi_msala_app/Welcome_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: Color(0xFF171D26),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80.0),
            Center(
              child: Container(
                // height: 80.0,
                child: Image.asset('lib/assets/images/mirchi.png',
                    width: 152, height: 164, fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Center(
              child: Container(
                // height: 80.0,
                child: Image.asset('lib/assets/images/Mirchi Masala.png',
                    width: 215, height: 32, fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
