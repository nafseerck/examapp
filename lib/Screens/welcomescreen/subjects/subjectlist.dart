import 'package:exam_app/Screens/welcomescreen/subjects/subjectcard.dart';
import 'package:flutter/material.dart';


class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              ItemCard(
                imgSrc: "assets/images/main.jpg",
                subjectName: "Biology",
                svgSrc: '',
              ),
              ItemCard(
                imgSrc: "assets/images/main.png",
                subjectName: "Chemsitry",
                svgSrc: '',
              ),
              ItemCard(
                imgSrc: "assets/images/main.png",
                subjectName: "Physics",
                svgSrc: '',
              )
            ],
          ),
          Row(
            children: <Widget>[
              ItemCard(
                imgSrc: "assets/images/main.jpg",
                subjectName: "Biology",
                svgSrc: '',
              ),
              ItemCard(
                imgSrc: "assets/images/main.png",
                subjectName: "Chemsitry",
                svgSrc: '',
              ),
              ItemCard(
                imgSrc: "assets/images/main.png",
                subjectName: "Physics",
                svgSrc: '',
              )
            ],
          ),

        ],
      ),
    );
  }
}
