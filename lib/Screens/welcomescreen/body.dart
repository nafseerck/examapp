import 'package:exam_app/Screens/welcomescreen/subjects/subjectlist.dart';
import 'package:flutter/material.dart';

class MainScreenBody extends StatefulWidget {
  @override
  _MainScreenBodyState createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: ItemList(),
          ),
        ],
      ),
    );
  }
}
