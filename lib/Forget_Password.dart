import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mirchi_msala_app/Verification.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

TextEditingController emailController = TextEditingController();

class _ForgetScreenState extends State<ForgetScreen> {
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
    // var child;
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30.0,
                  ),
                  onPressed: () {
                    // Navigate back when the back button is pressed
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(height: 120),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Text(
                  '  Phone Number:',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
                Container(
                  height: 60,
                  child: IntlPhoneField(
                      //flagsButtonPadding: const EdgeInsets.all(1),
                      dropdownIconPosition: IconPosition.trailing,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Colors.white), //<-- SEE HERE
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      }),
                ),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerificationCode(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEA0000),
                        fixedSize: const Size(300, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'Get OTP',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: ' We will send your on this mobile\n number ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                      children: [
                        TextSpan(
                          text: 'One Time Password ',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            color: Color(0xffEA0000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 160,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
