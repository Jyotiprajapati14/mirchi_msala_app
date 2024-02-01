import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Account_Screen.dart';
import 'package:mirchi_msala_app/Chat_screen.dart';

class StepperDemo extends StatefulWidget {
  StepperDemo() : super();

  final String title = "Stepper Demo";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text(
        'Order confirmed ',
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      content: Text('Hello!'),
      isActive: true,
    ),
    Step(
      title: Text(
        'Preparing your order',
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      content: Text(''),
      isActive: true,
    ),
    Step(
      title: Text(
        'Order is ready at the restaurant ',
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      content: Text(''),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text(
        'Rider is picking up your order',
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      content: Text(''),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text(
        'Rider is picking up your order',
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      content: Text(''),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
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
            SizedBox(height: 30),
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
                    fontSize: 14,
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
                  MaterialPageRoute(builder: (context) => AccountScreen()),
                );
              },
              child: Image.asset("lib/assets/images/start.png"),
            );
          },
        ),
      ),
      // Body
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Estimate Delivery time",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
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
              SizedBox(height: 20),
              Container(
                  // color: Colors.white,
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    border: Border.all(
                        color: Colors.black, // Border color
                        width: 1.0 // Border width
                        ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: ListTile(
                    leading: Image.asset("lib/assets/images/sunil.png"),
                    title: Text(
                      "Sonu Yadav",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),
              Container(
                child: Stepper(
                  currentStep: this.current_step,
                  steps: steps,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() {
                      current_step = step;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (current_step < steps.length - 1) {
                        current_step = current_step + 1;
                      } else {
                        current_step = 0;
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (current_step > 0) {
                        current_step = current_step - 1;
                      } else {
                        current_step = 0;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
