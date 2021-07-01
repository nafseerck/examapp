import 'package:exam_app/components/navdrawer.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<Widget> get listTileWidgets {
    List<Widget> _widget = [SizedBox(height: 40.0)];
    List<String> _buttonName = [
      'Model Questions & Solutions',
      'Previous Year Exam',
      'Rapid Test',
      'Important Q&A Theory',

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
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Select Your Question Models',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Material(
            child: Container(
              child: Column(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: this.listTileWidgets),
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
      },
      child: Container(
        margin: EdgeInsets.only(left: 50.0, top: 10.0, right: 50.0),
        padding: EdgeInsets.only(top: 10.0),
        height: 90,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isTapped
                ? [Colors.black, Colors.red]
                : [Colors.yellow, Colors.black],
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
