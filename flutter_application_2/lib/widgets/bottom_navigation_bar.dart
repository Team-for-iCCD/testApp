import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/screens/add_order.dart';
import 'package:flutter_application_2/screens/order_list.dart';
import 'package:flutter_application_2/screens/regist_menu.dart';
import 'package:flutter_application_2/screens/scan.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  static var _index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted, color: Colors.white),
          label: 'Order List',
          backgroundColor: Colors.lightBlueAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted_add, color: Colors.white),
          label: 'Add Order',
          backgroundColor: Colors.lightGreenAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera, color: Colors.white),
          label: 'Scan',
          backgroundColor: Colors.purpleAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_to_photos, color: Colors.white),
          label: 'Regist Menu',
          backgroundColor: Colors.redAccent,
        )
      ],
      onTap: tapBottomIcon,
    );
  }

  void tapBottomIcon(int value) {
    setState(() {
      _index = value;
    });
    switch (value) {
      case 0:
        Navigator.pop(context);
        Navigator.pushNamed(context, '/orderlist');
        break;
      case 1:
        Navigator.pop(context);
        Navigator.pushNamed(context, '/addorder');
        break;
      case 2:
        Navigator.pop(context);
        Navigator.pushNamed(context, '/scan');
        break;
      case 3:
        Navigator.pop(context);
        Navigator.pushNamed(context, '/registmenu');
        break;
    }
  }
}
