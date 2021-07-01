import 'package:exam_app/Screens/questionandanswers/components/body.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          ElevatedButton(onPressed: (){}, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
