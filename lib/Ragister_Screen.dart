import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mirchi_msala_app/Forget_Password.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController firstController = TextEditingController();
TextEditingController lastController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
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
                    SizedBox(height: 60),
                    Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " First Name:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "First Name:",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: Color(0xff9796A1),
                                    fontWeight: FontWeight.w300,
                                  ),
                              // prefixIcon: Icon(Icons.name),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC)))),
                          onFieldSubmitted: (value) {},
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return 'Please enter First Name';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " Last Name:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Password",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: Color(0xff9796A1),
                                    fontWeight: FontWeight.w300,
                                  ),
                              // prefixIcon: Icon(Icons.email),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC)))),
                          onFieldSubmitted: (value) {},
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return 'Please enter Last name';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " Address:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Address",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: Color(0xff9796A1),
                                    fontWeight: FontWeight.w300,
                                  ),
                              //prefixIcon: Icon(Icons.ad),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC)))),
                          onFieldSubmitted: (value) {},
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return 'Please enter Address';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " Email:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Email",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: Color(0xff9796A1),
                                    fontWeight: FontWeight.w300,
                                  ),
                              //prefixIcon: Icon(Icons.email),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffDCDCDC)))),
                          onFieldSubmitted: (value) {},
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return 'Please enter Email Id';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
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
                    SizedBox(height: 50),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgetScreen(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffEA0000),
                            fixedSize: const Size(301, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: const Text(
                          ' Register ',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffEDEDED)),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Already have a account ? ',
                          style: TextStyle(fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFF0000),
                                  decoration: TextDecoration.underline,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ]),
            ),
          ),
        ));
  }
}
