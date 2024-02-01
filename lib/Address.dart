import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/detail_screen.dart';

class OderPlaceScreen extends StatefulWidget {
  const OderPlaceScreen({super.key});

  @override
  State<OderPlaceScreen> createState() => _OderPlaceScreenState();
}

class _OderPlaceScreenState extends State<OderPlaceScreen> {
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
                  Center(
                    child: Text(
                      "Details",
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
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
                    MaterialPageRoute(builder: (context) => DetailScreen()),
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
                    SizedBox(width: 220),
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
                    fontSize: 11,
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
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Select an address",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "+ Address",
                        hintStyle:
                            Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontSize: 14,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                        prefixIcon: Icon(Icons.add_road),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffDCDCDC))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffDCDCDC))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffDCDCDC)))),
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Saved address",
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
                    Text(
                      "Delivers To",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
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
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(width: 7),
                    Text(
                      "Rc-43 Subhash Park Khoda Colony Ghaziabad UP",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
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
                    Text(
                      "Delivers To",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
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
                    Image.asset(
                      "lib/assets/images/building.png",
                      height: 23,
                      width: 23,
                    ),
                    SizedBox(width: 7),
                    Text(
                      "Rc-43 Subhash Park Khoda Colony Ghaziabad UP",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          )),
        ));
  }
}
