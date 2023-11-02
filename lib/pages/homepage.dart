import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/pages/glavpage.dart';
import 'package:foodapp/pages/login.dart';
import 'package:foodapp/pages/order_page.dart';
import 'package:foodapp/pages/sales.dart';
import 'package:foodapp/pages/saved.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage> {
  int _currentIndex = 0;

  final tabs = [
    const GlavPage(),
    const Saved(),
    const GlavPage(),
    const Profile(),
    const Sales(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedIconTheme: const IconThemeData(color: Colors.red, size: 30),
          unselectedIconTheme: const IconThemeData(color: Colors.black, size: 30),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.suit_heart,),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.transparent,
                ),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.creditcard),
                label: ""
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) => const OrderDetails(),
            );
          },
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          child: const Icon(Icons.shopping_cart_outlined),
        ),
      )
    );
  }
}
