import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff171D26),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                child: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Image.asset("lib/assets/images/iconn.png"),
                      Center(
                        child: Text(
                          "Card",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
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
                          hintText: "  Search ",
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
                      SizedBox(height: 130),
                      Center(
                          child: Image.asset(
                        "lib/assets/images/cart.png",
                        height: 160,
                        width: 160,
                      )),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          "Your Break as Empty",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.redAccent),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        "typesetting industry. Lorem Ipsum has been the industry's",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        "   standard dummy text ever since the 1500s,",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ])))));
  }
}
