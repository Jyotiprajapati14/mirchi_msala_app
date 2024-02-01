import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Add_Card.dart';
import 'package:mirchi_msala_app/Prathe.dart';
import 'package:mirchi_msala_app/detail_screen.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
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
                      "Food Item",
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
                    MaterialPageRoute(builder: (context) => PratheScreen()),
                  );
                },
                child: Image.asset("lib/assets/images/start.png"),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(right: 20, left: 20, top: 10),
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
                    SizedBox(width: 180),
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
                      "Ingredients",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
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
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffEA0000),
                          fixedSize: const Size(110, 23),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        ' Order Now ',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffEDEDED)),
                      ),
                    ),
                    SizedBox(width: 70),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddCardScreen(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffEA0000),
                          fixedSize: const Size(110, 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Add to Card',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffEDEDED)),
                      ),
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
