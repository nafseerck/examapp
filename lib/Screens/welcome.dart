import 'package:exam_app/Screens/questionpaper/menu.dart';
import 'package:exam_app/components/navdrawer.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<Widget> get listTileWidgets {
    List<Widget> _widget = [SizedBox(height: 40.0)];
    List<String> _buttonName = [
      'English',
      'Hindi',
      'Physics',
      'Chemistry',
      'Biology',
      'Mathematics'
    ];

    // ListTileWidget is defined below in another StatefulWidget
    _buttonName.forEach((name) {
      _widget.add(ListTileWidget(name: name));
      _widget.add(SizedBox(height: 20.0));
    });


    return _widget;
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.white,
    ));
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(),
      body: Center(

        child: SingleChildScrollView(
          child: Material(
            child: Container(
              child: Column(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: this.listTileWidgets),
                  Container(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => QuestionScreen()));
                          },
                          child: Container(
                            height: 50.0,
                            margin: EdgeInsets.all(10),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => QuestionScreen()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Container(
                                  constraints:
                                  BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Submit",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // child: Container(
                          //   margin: EdgeInsets.only(left: 25.0),
                          //   padding: EdgeInsets.only(top: 15.0, left: 38.0),
                          //   height: 50.0,
                          //   width: 150.0,
                          //   decoration: BoxDecoration(
                          //       color: Colors.blue,
                          //       borderRadius: BorderRadius.circular(24.0)),
                          //   child: Text(
                          //     "Submit",
                          //     style: TextStyle(
                          //       color: Colors.white,
                          //       fontSize: 20.0,
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListTileWidget extends StatefulWidget {
  final String name;

  ListTileWidget({Key? key, required this.name}) : super(key: key);

  @override
  ListTileWidgetState createState() => ListTileWidgetState();
}

class ListTileWidgetState extends State<ListTileWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isTapped = true);
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => QuestionScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(left: 50.0, top: 10.0, right: 50.0),
        padding: EdgeInsets.only(top: 10.0),
        height: 90,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isTapped
                ? [Colors.purple, Colors.red]
                : [Colors.black, Colors.yellow],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        child: ListTile(
          title: Text(
            widget.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'WorksSansSemiBold',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
