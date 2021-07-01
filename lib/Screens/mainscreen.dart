import 'package:exam_app/Screens/components/subjects/subjectscreens.dart';
import 'package:flutter/material.dart';

class MainScreenComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        // gradient: LinearGradient(
        //   colors: [Colors.purple, Colors.red],
        //   begin: Alignment.bottomRight,
        //   end: Alignment.topLeft,
        // )
      ),
      child: Subjects(),
    );
  }
}
