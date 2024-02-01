import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mirchi_msala_app/Bottom_Navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController dobController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
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
                    SizedBox(height: 50),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(height: 40),
                    Text(
                      '  Phone Number:',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(height: 10),
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
                    // SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.black,
                            child: Text(
                              " Password:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
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
                              prefixIcon: Icon(Icons.password),
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
                              return 'Please enter Password';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyNavigationBar(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffEA0000),
                            fixedSize: const Size(301, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: const Text(
                          ' Login ',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffEDEDED)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
          ),
        ));
  }
}
