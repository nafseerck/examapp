import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ItemCard extends StatelessWidget {
  final String title, subjectName, imgSrc;
  const ItemCard({
    required this.title,
    required this.subjectName,
    required this.imgSrc,
  });

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  // padding: EdgeInsets.all(25),
                  // decoration: BoxDecoration(
                  //   color: kPrimaryColor.withOpacity(0.13),
                  //   shape: BoxShape.circle,
                  // ),
                  child: Image.asset(
                    imgSrc,
                    width: size.width * 0.40,
                    // size.width * 0.18 means it use 18% of total width
                  ),
                ),
                Text(title),
                SizedBox(height: 10),
                Text(
                  subjectName,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
