import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mirchi_msala_app/Edit_profile.dart';
import 'package:mirchi_msala_app/Near_by.dart';
import 'package:mirchi_msala_app/Top_catgary.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String accesstoken});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  fromJson(e) {}
}

class _HomeScreenState extends State<HomeScreen> {
  //final List<Map> myProducts = List.generate(100, (index) => {}).toList();
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
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
                      builder: (context) => EditProfileScreen(),
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
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 10),
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
                        SizedBox(width: 12),
                        Container(
                          height: 44, // Adjust the height as needed
                          width: 1.5, // Width of the vertical divider
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
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "30% Discount for\nFast Food",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Valid Until July 23.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                              height: 99,
                              width: 53,
                              child: Image.asset("lib/assets/images/Mode.png")),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 150,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                // SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Choose by Category",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TopCatgaryScreen(),
                            ),
                          );
                        },
                        child: Text(
                          " See More",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFF0000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      Stack(children: []),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/sandwich.png",
                                height: 53,
                                width: 52,
                              ) //Text
                              ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Cheekan",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/coffee.png",
                                height: 57,
                                width: 57,
                              ) //Text
                              ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Coffee",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/biriyani.png",
                                height: 57,
                                width: 57,
                              ) //Text
                              ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Cheekan Biriyani",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/burger.png",
                                height: 40,
                                width: 60,
                              ) //Text
                              ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Burger",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "    All Restaurants",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Column(children: <Widget>[
                  SizedBox(
                    height: 180,
                    // width: 490,
                    child: Card(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 5),
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
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
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
                                                "North Delhi",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
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
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Expanded(
                                    flex: 1,
                                    child: Image(
                                      height: 90,
                                      width: 92,
                                      image: AssetImage(
                                          "lib/assets/images/sand.png"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 55),
                                  child: Container(
                                    child: RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      updateOnDrag: false,
                                      glow: false,
                                      itemCount: 1,
                                      itemSize: 25,
                                      allowHalfRating: false,
                                      itemBuilder: (context, _) => Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      onRatingUpdate: (rating) {
                                        // Handle the rating update here
                                      },
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
                                    "130.00",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red),
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
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
                    height: 180,
                    // width: 490,
                    child: Card(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 5, right: 20, left: 20),
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
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
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
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
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
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
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
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Expanded(
                                      flex: 1,
                                      child: Image(
                                        height: 90,
                                        width: 92,
                                        image: AssetImage(
                                            "lib/assets/images/whict.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 55),
                                  child: Container(
                                    child: RatingBar.builder(
                                      initialRating: 0,
                                      minRating: 0,
                                      updateOnDrag: false,
                                      glow: false,
                                      itemCount: 1,
                                      itemSize: 25,
                                      allowHalfRating: false,
                                      itemBuilder: (context, _) => Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      onRatingUpdate: (rating) {
                                        // Handle the rating update here
                                      },
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red),
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
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
              ])),
        )));
  }
}
