import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentpayScreen extends StatelessWidget {
  const PaymentpayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171D26),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30.0,
                  ),
                  color: Colors.grey,
                  onPressed: () {
                    // Navigate back when the back button is pressed
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            Center(
              child: Text(
                "Check Out",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
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
                    "Delivery address",
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
              padding: const EdgeInsets.only(left: 5, right: 5, top: 4),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Rc-43 Subhash Park Khoda.....",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(width: 70),
                  Text(
                    "Change ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 4),
              child: Row(
                children: [
                  Text(
                    "    Payment Method",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(width: 190),
                  Text(
                    "Add+ ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
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
                    "**********1234",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
            SizedBox(height: 10),
            Container(
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
                    "Phone pe",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffD9D9D9),
                  hintText: "  Enter Coupon ",
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
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 4),
              child: Row(
                children: [
                  Text(
                    "   Summary",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(width: 230),
                  Image(image: AssetImage("lib/assets/images/red.png")),
                  Text(
                    "170.00",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 4),
              child: Row(
                children: [
                  Text(
                    "   Subtotal",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.pink,
              margin: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Bill Summary ",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 13.0),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Delivery Cost ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text(
                            "60,000 ",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Discount ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text(
                            "30%",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Total ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text(
                            "60,000 ",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30.0),
                      child: Card(
                        child: ElevatedButton(
                            onPressed: () {
                              showGeneralDialog(
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  transitionBuilder: (context, a1, a2, widget) {
                                    return Transform.scale(
                                      scale: a1.value,
                                      child: Opacity(
                                        opacity: a1.value,
                                        child: AlertDialog(
                                          shape: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0)),
                                          title: Image.asset(
                                            "lib/assets/images/don.png",
                                            colorBlendMode: BlendMode.dstATop,
                                            scale: 0.5,
                                            // color: Color.fromARGB(255, 15, 147, 59),
                                          ),
                                          content: Text(
                                            '     Thanks For Your\n   Your Oder',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  transitionDuration:
                                      Duration(milliseconds: 200),
                                  barrierDismissible: true,
                                  barrierLabel: '',
                                  context: context,
                                  pageBuilder:
                                      (context, animation1, animation2) {
                                    return Text("Jyoti");
                                  });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            child: Text(
                              "Payment",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
