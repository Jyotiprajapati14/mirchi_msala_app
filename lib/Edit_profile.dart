import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Account_Screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF171D26),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                child: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountScreen()),
                            );
                          },
                          child: Image.asset("lib/assets/images/iconn.png")),
                      Center(
                        child: Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: 12),
                              Container(
                                height: 44, // Adjust the height as needed
                                width: 1.5, // Width of the vertical divider
                                color: Colors
                                    .black, // Color of the vertical divider
                              ),
                              Image.asset("lib/assets/images/mic.png"),
                            ],
                          ),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: 8),
                              Image.asset("lib/assets/images/glass.png"),
                              SizedBox(width: 12),
                              Container(
                                height: 44, // Adjust the height as needed
                                width: 1.5, // Width of the vertical divider
                                color: Colors
                                    .black, // Color of the vertical divider
                              ),
                            ],
                          ),
                          filled: true,
                          fillColor: Color(0xffD9D9D9),
                          hintText: "  Search here ",
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xffDCDCDC)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xffDCDCDC)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xffDCDCDC)),
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // SizedBox(height: 20),
                            Card(
                              elevation: 10,
                              margin: EdgeInsets.only(
                                  left: 10.0, right: 7.0, top: 20.0),
                              color: Color(0xFFD9D9D9),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 20.0, right: 20.0),
                                      child: Stack(children: [
                                        CircleAvatar(
                                          radius: 50,
                                          backgroundImage: AssetImage(
                                              "lib/assets/images/hammi.png"),
                                        ),
                                        Align(
                                          widthFactor: 2,
                                          heightFactor: 4,
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Color(0xFFFF0000),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: GestureDetector(
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        // Navigator.push(
                                                        //   context,
                                                        //   MaterialPageRoute(
                                                        //       builder: (context) =>
                                                        //           EditProfile()),
                                                        // );
                                                        // Get.to(EditProfile());
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 10.0,
                                                          right: 10.0,
                                                        ),
                                                        child: const Text(
                                                          "50%",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ))),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 5,
                                            left: 5,
                                            top: 5,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Sheela Singh",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                              top: 5.0,
                                              bottom: 4.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                '9910407329',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                              top: 5.0,
                                              bottom: 4.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'sheelas8383@gmail.com',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditProfileScreen(),
                                                  ));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xffFF0000),
                                                fixedSize: const Size(130, 19),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5))),
                                            child: const Text(
                                              ' Edit Profile  ',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xffFFFFFF)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 300,
                              width: 470,
                              child: Card(
                                margin: EdgeInsets.all(10),
                                color: Color(0xffD9D9D9),
                                shadowColor: Colors.blueGrey,
                                elevation: 10,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10, top: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            " Edit Profile ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Name:',
                                            hintStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            )),
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: true,
                                        validator: (value) {
                                          // if (value.isEmpty && value.length < 7) {
                                          //   return 'Invalid password!';
                                          // }
                                        },
                                        onFieldSubmitted: (value) {
                                          setState(() {
                                            //password = value;
                                          });
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, bottom: 10),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Contact NO:',
                                            hintStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            )),
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: true,
                                        validator: (value) {
                                          // if (value.isEmpty && value.length < 7) {
                                          //   return 'Invalid password!';
                                          // }
                                        },
                                        onFieldSubmitted: (value) {
                                          setState(() {
                                            //password = value;
                                          });
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, bottom: 10),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Email ID:',
                                            hintStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            )),
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: true,
                                        validator: (value) {
                                          // if (value.isEmpty && value.length < 7) {
                                          //   return 'Invalid password!';
                                          // }
                                        },
                                        onFieldSubmitted: (value) {
                                          setState(() {
                                            //password = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 10),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => MyNavigationBar(),
                                  //     ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFF0000),
                                    fixedSize: const Size(250, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                child: const Text(
                                  ' Update Profile  ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff000000)),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ]),
                    ])))));
  }
}
