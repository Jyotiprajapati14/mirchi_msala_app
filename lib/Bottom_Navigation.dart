import 'package:flutter/material.dart';
import 'package:mirchi_msala_app/Account_Screen.dart';
import 'package:mirchi_msala_app/Card_Screen.dart';
import 'package:mirchi_msala_app/Home_Screen.dart';
import 'package:mirchi_msala_app/Near_by.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(
      accesstoken: '',
    ),
    NearByScreen(),
    CardScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171D26),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/hyy.png'),
              color: Color(0xFFFFFFFF),
            ),
            label: "Home",
            backgroundColor: Color(0xFF171D26),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/lighting.png'),
              color: Color(0xFFFFFFFF),
            ),
            label: "Near By",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/carding.png'),
              color: Color(0xFFFFFFFF),
            ),
            label: "Card",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/marsion.png'),
              color: Color(0xFFFFFFFF),
            ),
            label: "Account",
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        iconSize: 35,
        onTap: _onItemTapped,
        elevation: 4,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
