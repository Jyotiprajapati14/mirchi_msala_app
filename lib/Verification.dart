import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirchi_msala_app/Welcome_Screen.dart';
import 'package:pinput/pinput.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: SafeArea(
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
                SizedBox(height: 80),
                Text(
                  "Verification Code",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "Enter the OTP Sent to ********9865",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontFamily: GoogleFonts.outfit().fontFamily),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Directionality(
                        textDirection: TextDirection.ltr,
                        child: Pinput(
                          length: 5,
                          controller: pinController,
                          focusNode: focusNode,
                          androidSmsAutofillMethod:
                              AndroidSmsAutofillMethod.smsUserConsentApi,
                          listenForMultipleSmsOnAndroid: true,
                          validator: (value) {
                            return value == '22222' ? null : 'Pin is incorrect';
                          },
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          onCompleted: (pin) {
                            debugPrint('onCompleted: $pin');
                          },
                          onChanged: (value) {
                            debugPrint('onChanged: $value');
                          },
                          cursor: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 9),
                                width: 30,
                                height: 2,
                                color: Color.fromRGBO(23, 171, 144, 1),
                              ),
                            ],
                          ),
                          defaultPinTheme: PinTheme(
                            width: 50,
                            height: 45,
                            textStyle: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(30, 60, 87, 1),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromRGBO(23, 171, 144, 0.4)),
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEA0000),
                        fixedSize: const Size(301, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      ' Verify & Proceed ',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffEDEDED)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Don’t receive the OTP ?",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontFamily: GoogleFonts.outfit().fontFamily)),
                      TextSpan(
                          text: " Resend OTP",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: Color(0xffEA0000),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontFamily: GoogleFonts.outfit().fontFamily,
                                  decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()..onTap = () {})
                    ])),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
