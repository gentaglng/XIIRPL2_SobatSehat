import 'package:flutter/material.dart';
import 'package:sobatsehat/screen/bnb_health.dart';
import 'package:sobatsehat/screen/bnb_notif.dart';
import 'package:sobatsehat/screen/bnb_setting.dart';

import 'bnb_home.dart';

class Bnb extends StatefulWidget {
  const Bnb({super.key});

  @override
  State<Bnb> createState() => _BnbState();
}

class _BnbState extends State<Bnb> {
  int currentIndex = 0;

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [Home(), Health(), Notif(), Setting()];
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff22CF33),
        unselectedItemColor: Color(0xff22CF33).withOpacity(0.3),
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety), label: 'Health'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: 'Notif'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
