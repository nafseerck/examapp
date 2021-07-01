import 'package:exam_app/Screens/components/appbar.dart';
import 'package:exam_app/components/navdrawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: Container(
        child: SimpleAppBarPage(),
      ),

    );
  }
}
