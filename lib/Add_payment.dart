import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Add_item.dart';
import 'package:mirchi_msala_app/Pay_screen.dart';

class AddCardDone extends StatefulWidget {
  const AddCardDone({super.key});

  @override
  State<AddCardDone> createState() => _AddCardDoneState();
}

class _AddCardDoneState extends State<AddCardDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF171D26),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF171D26),
          title: Row(
              // children: [],
              ),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddItemScreen()),
                  );
                },
                child: Image.asset("lib/assets/images/start.png"),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: SafeArea(
              child: Column(
            children: [
              Image.asset(
                "lib/assets/images/food.png",
                height: 345,
                width: 500,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 4),
                child: Row(
                  children: [
                    Text(
                      "Paratha",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(width: 200),
                    Image(image: AssetImage("lib/assets/images/red.png")),
                    Text(
                      "130.00",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Image.asset(
                          "lib/assets/images/mint.png",
                          height: 23,
                          width: 23,
                        ) //Text
                        ),
                    SizedBox(width: 10),
                    Text(
                      "Mint Chatani",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(width: 190),
                    Image(image: AssetImage("lib/assets/images/red.png")),
                    Text(
                      "20",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Image.asset(
                          "lib/assets/images/nara.png",
                          height: 20,
                          width: 20,
                        ) //Text
                        ),
                    SizedBox(width: 10),
                    Text(
                      "Mango Achar",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(width: 190),
                    Image(image: AssetImage("lib/assets/images/red.png")),
                    Text(
                      "20",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.watch_later_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "30-45 MIN + Delivery Time",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "2 Pic Paratha | Potato",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.man,
                      color: Colors.white,
                    ),
                    Text(
                      "Sundar Singh",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Payments",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentpayScreen(),
                          ));
                    },
                    child: Container(
                        // color: Colors.white,
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(
                              color: Colors.white, // Border color
                              width: 1.0 // Border width
                              ),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: ListTile(
                          leading: Image.asset("lib/assets/images/phonep.png"),
                          title: Text(
                            "Phone pey",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentpayScreen(),
                          ));
                    },
                    child: Container(
                        // color: Colors.white,
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(
                              color: Colors.white, // Border color
                              width: 1.0 // Border width
                              ),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: ListTile(
                          leading: Image.asset("lib/assets/images/Gpey.png"),
                          title: Text(
                            "Google pey",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentpayScreen(),
                          ));
                    },
                    child: Container(
                        // color: Colors.white,
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(
                              color: Colors.white, // Border color
                              width: 1.0 // Border width
                              ),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: ListTile(
                          leading: Image.asset("lib/assets/images/upi.png"),
                          title: Text(
                            "UPI Pey",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentpayScreen(),
                          ));
                    },
                    child: Container(
                        // color: Colors.white,
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(
                              color: Colors.white, // Border color
                              width: 1.0 // Border width
                              ),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: ListTile(
                          leading: Image.asset("lib/assets/images/money.png"),
                          title: Text(
                            "Cash on Delivery",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentpayScreen(),
                          ));
                    },
                    child: Container(
                        // color: Colors.white,
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(
                              color: Colors.white, // Border color
                              width: 1.0 // Border width
                              ),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: ListTile(
                          leading: Image.asset("lib/assets/images/net.png"),
                          title: Text(
                            "Net Banking",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ],
          )),
        ));
  }
}
