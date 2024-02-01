import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Account_Screen.dart';
import 'package:mirchi_msala_app/Near_by.dart';
import 'package:mirchi_msala_app/Prathe.dart';

class TopCatgaryScreen extends StatefulWidget {
  const TopCatgaryScreen({super.key});

  @override
  State<TopCatgaryScreen> createState() => _TopCatgaryScreenState();
}

class _TopCatgaryScreenState extends State<TopCatgaryScreen> {
  List<String> images = [
    "lib/assets/images/veg.png",
    "lib/assets/images/paratha.png",
    "lib/assets/images/biree.png",
    "lib/assets/images/whict.png",
    "lib/assets/images/salad.png",
    "lib/assets/images/paneer.png",
  ];
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
                    "Home",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Rc-43 Subhash Park Khoda.....",
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
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
                    MaterialPageRoute(
                      builder: (context) => AccountScreen(),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/images/more.png"),
                ),
              ),
            ],
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NearByScreen()),
                  );
                },
                child: Image.asset("lib/assets/images/location.png"),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 12),
                      Container(
                        height: 44, // Adjust the height as needed
                        width: 1.3, // Width of the vertical divider
                        color: Colors.black, // Color of the vertical divider
                      ),
                      Image.asset("lib/assets/images/mic.png"),
                    ],
                  ),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 8),
                      Image.asset("lib/assets/images/glass.png"),
                      SizedBox(width: 10),
                      Container(
                        height: 44, // Adjust the height as needed
                        width: 1.3, // Width of the vertical divider
                        color: Colors.black, // Color of the vertical divider
                      ),
                    ],
                  ),
                  filled: true,
                  fillColor: Color(0xffD9D9D9),
                  hintText: "  Search ",
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
              SizedBox(height: 10),
              Text(
                "Top Categories",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/vej.png",
                                      height: 130,
                                      width: 130,
                                    ),
                                    SizedBox(width: 20),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PratheScreen()),
                                          );
                                        },
                                        child: Image.asset(
                                          "lib/assets/images/kad.png",
                                          height: 130,
                                          width: 130,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/assets/images/bar.png",
                            height: 130,
                            width: 130,
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            "lib/assets/images/chik.png",
                            height: 130,
                            width: 130,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/assets/images/vej.png",
                            height: 130,
                            width: 130,
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            "lib/assets/images/kad.png",
                            height: 130,
                            width: 130,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        )));
  }
}
