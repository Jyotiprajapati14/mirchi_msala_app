import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Bottom_Navigation.dart';
import 'package:mirchi_msala_app/Chat_screen.dart';
import 'package:mirchi_msala_app/Edit_profile.dart';
import 'package:mirchi_msala_app/Home_Screen.dart';
import 'package:mirchi_msala_app/Login_Screen.dart';
import 'package:mirchi_msala_app/Address.dart';
import 'package:mirchi_msala_app/Prathe.dart';
import 'package:mirchi_msala_app/Top_catgary.dart';
import 'package:mirchi_msala_app/Trak_oder.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
                                  builder: (context) => MyNavigationBar()),
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
                      )),
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
                              height: 350,
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
                                            " Food Order",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HomeScreen(
                                                    accesstoken: '',
                                                  )),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 8.0,
                                            bottom: 4.0),
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/good.png")),
                                            SizedBox(width: 10),
                                            Text(
                                              'Your Order',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(width: 220),
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/back.png")),
                                          ],
                                        ),
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TopCatgaryScreen()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 8.0,
                                            bottom: 4.0),
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/frame.png")),
                                            SizedBox(width: 10),
                                            Text(
                                              'Favorite orders',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(width: 200),
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/back.png")),
                                          ],
                                        ),
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  OderPlaceScreen()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 8.0,
                                            bottom: 4.0),
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/map.png")),
                                            SizedBox(width: 10),
                                            Text(
                                              '  Address',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(width: 244),
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/back.png")),
                                          ],
                                        ),
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PratheScreen()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 8.0,
                                            bottom: 4.0),
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/rasto.png")),
                                            SizedBox(width: 10),
                                            Text(
                                              'Restaurants',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(width: 220),
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/back.png")),
                                          ],
                                        ),
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StepperDemo()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 8.0,
                                            bottom: 4.0),
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/scooter.png")),
                                            SizedBox(width: 10),
                                            Text(
                                              ' Traking Oder',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(width: 210),
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/back.png")),
                                          ],
                                        ),
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ChatScreen()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 8.0,
                                            bottom: 5.0),
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/helo.png")),
                                            SizedBox(width: 10),
                                            Text(
                                              'Help',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(width: 265),
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/back.png")),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 210,
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
                                            " Payments",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EditProfileScreen()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 8.0,
                                            bottom: 4.0),
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/lalu.png")),
                                            SizedBox(width: 10),
                                            Text(
                                              'My Account',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(width: 220),
                                            Image(
                                                image: AssetImage(
                                                    "lib/assets/images/back.png")),
                                          ],
                                        ),
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 8.0,
                                          bottom: 4.0),
                                      child: Row(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  "lib/assets/images/refund.png")),
                                          SizedBox(width: 10),
                                          Text(
                                            'Payment & Refunds',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 180),
                                          Image(
                                              image: AssetImage(
                                                  "lib/assets/images/back.png")),
                                        ],
                                      ),
                                    ),
                                    new Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 8.0,
                                          bottom: 4.0),
                                      child: Row(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  "lib/assets/images/dallu.png")),
                                          SizedBox(width: 10),
                                          Text(
                                            'Mirchi Masala Money',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 160),
                                          Image(
                                              image: AssetImage(
                                                  "lib/assets/images/back.png")),
                                        ],
                                      ),
                                    ),
                                    // new Divider(
                                    //   color: Color(0xffEBEBEB),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
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
                                    backgroundColor: Color(0xffD9D9D9),
                                    fixedSize: const Size(360, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                child: const Text(
                                  ' Logout  ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff000000)),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ]),
                    ])))));
  }
}
