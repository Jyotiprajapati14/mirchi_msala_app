import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Bottom_Navigation.dart';
import 'package:mirchi_msala_app/Chat_screen.dart';

class NearByScreen extends StatefulWidget {
  const NearByScreen({Key? key}) : super(key: key);
  @override
  _NearByScreenState createState() => _NearByScreenState();
}

class _NearByScreenState extends State<NearByScreen> {
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
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "    Track Your Order",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
                child: Text(
                  "Chat",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatScreen()),
                    );
                  },
                  child: Image.asset("lib/assets/images/chat.png")),
            ],
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyNavigationBar()),
                  );
                },
                child: Image.asset("lib/assets/images/start.png"),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                child: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          "Estimate Delivery time",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          " 5:30PM",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.redAccent),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Image.asset(
                          "lib/assets/images/haku.png",
                          height: 600,
                          width: 360,
                        ),
                      )
                    ])))));
  }
}
