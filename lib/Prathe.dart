import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Add_item.dart';
import 'package:mirchi_msala_app/Top_catgary.dart';

class PratheScreen extends StatefulWidget {
  const PratheScreen({super.key});

  @override
  State<PratheScreen> createState() => _PratheScreenState();
}

class _PratheScreenState extends State<PratheScreen> {
  int mycount = 0;
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
                    "    Paratha",
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
            ],
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TopCatgaryScreen()),
                  );
                },
                child: Image.asset("lib/assets/images/start.png"),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Center(
                        child: Text(
                          "Veg-Paratha Mariyan Restaurant",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [],
                          ),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              //SizedBox(width: 8),
                              Image.asset(
                                "lib/assets/images/scooter.png",
                                height: 30,
                                width: 35,
                              ),
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
                      SizedBox(height: 10),
                      Text(
                        " Most Popular Resturant",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Column(children: <Widget>[
                        SizedBox(
                          height: 190,
                          // width: 490,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, right: 20, left: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            children: [
                                              Container(
                                                //padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Mariyan Restaurant',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 4),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/assets/images/place.png")),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      "South Delhi",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 4),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/assets/images/ime.png")),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      "30-45 MIN",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Expanded(
                                            flex: 1,
                                            child: Image(
                                              height: 80,
                                              width: 180,
                                              image: AssetImage(
                                                  "lib/assets/images/image2.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 4),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "lib/assets/images/rupee.png")),
                                        SizedBox(width: 10),
                                        Text(
                                          "230.00",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red),
                                        ),
                                        SizedBox(width: 110),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddItemScreen()),
                                            );
                                          },
                                          child: Text(
                                            "ADD+",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 4),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "lib/assets/images/scooter.png")),
                                        SizedBox(width: 10),
                                        Text(
                                          "Free Delivery",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FivePointedStar(
                                    onChange: (count) {
                                      setState(() {
                                        mycount = count;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            color: Color(0xffFFFFFF),
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        SizedBox(
                          height: 190,
                          // width: 490,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, right: 20, left: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            children: [
                                              Container(
                                                //padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Tunde Restaurant',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 4),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/assets/images/place.png")),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      "South Delhi",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 4),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/assets/images/ime.png")),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      "30-45 MIN",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Expanded(
                                            flex: 1,
                                            child: Image(
                                              height: 80,
                                              width: 180,
                                              image: AssetImage(
                                                  "lib/assets/images/Paratha1.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 4),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "lib/assets/images/rupee.png")),
                                        SizedBox(width: 10),
                                        Text(
                                          "230.00",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red),
                                        ),
                                        SizedBox(width: 110),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddItemScreen()),
                                            );
                                          },
                                          child: Text(
                                            "ADD+",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 4),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "lib/assets/images/scooter.png")),
                                        SizedBox(width: 10),
                                        Text(
                                          "Free Delivery",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FivePointedStar(
                                    onChange: (count) {
                                      setState(() {
                                        mycount = count;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            color: Color(0xffFFFFFF),
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        SizedBox(
                          height: 190,
                          // width: 490,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, right: 20, left: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            children: [
                                              Container(
                                                //padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Mariyan Restaurant',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 4),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/assets/images/place.png")),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      "South Delhi",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 4),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/assets/images/ime.png")),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      "30-45 MIN",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Expanded(
                                            flex: 1,
                                            child: Image(
                                              height: 80,
                                              width: 180,
                                              image: AssetImage(
                                                  "lib/assets/images/image2.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 4),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "lib/assets/images/rupee.png")),
                                        SizedBox(width: 10),
                                        Text(
                                          "230.00",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red),
                                        ),
                                        SizedBox(width: 110),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddItemScreen()),
                                            );
                                          },
                                          child: Text(
                                            "ADD+",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 4),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "lib/assets/images/scooter.png")),
                                        SizedBox(width: 10),
                                        Text(
                                          "Free Delivery",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FivePointedStar(
                                    onChange: (count) {
                                      setState(() {
                                        mycount = count;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            color: Color(0xffFFFFFF),
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        SizedBox(
                          height: 190,
                          // width: 490,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, right: 20, left: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            children: [
                                              Container(
                                                //padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Tunde Restaurant',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 4),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/assets/images/place.png")),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      "South Delhi",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 4),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/assets/images/ime.png")),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      "30-45 MIN",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Expanded(
                                            flex: 1,
                                            child: Image(
                                              height: 80,
                                              width: 180,
                                              image: AssetImage(
                                                  "lib/assets/images/item.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 5),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "lib/assets/images/rupee.png")),
                                        SizedBox(width: 10),
                                        Text(
                                          "230.00",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red),
                                        ),
                                        SizedBox(width: 140),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddItemScreen()),
                                            );
                                          },
                                          child: Text(
                                            "ADD+",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 4),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "lib/assets/images/scooter.png")),
                                        SizedBox(width: 10),
                                        Text(
                                          "Free Delivery",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FivePointedStar(
                                    onChange: (count) {
                                      setState(() {
                                        mycount = count;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            color: Color(0xffFFFFFF),
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        SizedBox(height: 20),
                      ])
                    ])))));
  }
}
