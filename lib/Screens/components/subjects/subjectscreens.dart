import 'package:flutter/material.dart';

class Subjects extends StatelessWidget {
  const Subjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:EdgeInsets.only(left: 50.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.13),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/maths.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Mathematics",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.13),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/physics.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text(
                          "Physics",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.13),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/chemistry.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        "Chemistry",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0,),
        Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 8.0),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.13),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/biology.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Biology",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 8.0),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.13),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/computer.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "IT",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.13),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/social.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Social",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
