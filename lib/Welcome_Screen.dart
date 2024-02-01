import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Login_Screen.dart';
import 'package:mirchi_msala_app/Ragister_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

TextEditingController phoneController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _WelcomeScreenState extends State<WelcomeScreen> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF171D26),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 160),
                Center(
                  child: Container(
                    // height: 80.0,
                    child: Image.asset('lib/assets/images/mirchi.png',
                        width: 152, height: 164, fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Container(
                    // height: 80.0,
                    child: Image.asset('lib/assets/images/Mirchi Masala.png',
                        width: 215, height: 32, fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEDEDED),
                        fixedSize: const Size(263, 48),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEDEDED),
                        fixedSize: const Size(263, 48),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff9E0303)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
