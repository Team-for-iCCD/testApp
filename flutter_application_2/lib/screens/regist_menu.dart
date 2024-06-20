import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/widgets/bottom_navigation_bar.dart';

class RegistMenu extends StatelessWidget {
  const RegistMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regist Menu'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: const Text('Regist Menu'),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
