// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ugks_limousine_driver_app/presentation/pages/home_page.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  final _items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: "Offers"),
    BottomNavigationBarItem(
        icon: Icon(Icons.format_list_numbered_rounded), label: "Planned"),
    BottomNavigationBarItem(icon: Icon(Icons.check_circle), label: "Finished"),
  ];

  final _screens = <Widget>[
    HomePage(),
    Center(child: Text("Offers Page", style: TextStyle(color: Colors.white))),
    Center(child: Text("Planned Page", style: TextStyle(color: Colors.white))),
    Center(child: Text("Finished Page", style: TextStyle(color: Colors.white))),
  ];

  int _pageNavIndex = 0;

  Widget _bottomNavBar2() {
    return BottomNavigationBar(
      currentIndex: _pageNavIndex,
      onTap: (index) => setState(() => _pageNavIndex = index),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFFFFFFFF),
      unselectedItemColor: Color(0xFFFFFFFF).withOpacity(.5),
      items: _items,
      backgroundColor: Color(0xFF181818),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavBar2(),
      body: _screens[_pageNavIndex],
    );
  }
}
