import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/widgets/bottom_navigation_bar.dart';

class AddOrderView extends StatelessWidget {
  const AddOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Order'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: const Text('Add Order'),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
