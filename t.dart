import 'package:flutter/material.dart';
import 'main.dart';
import 'mydrawer.dart';

import 'mi.dart';

class al extends StatelessWidget {
  const al({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        Container(
          height: 200,
          child: Center(child: Text('فوتوشوب')),
        ),
        Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " الرئيسه ",
                  style: TextStyle(color: Colors.black),
                ),
                tileColor: Colors.black,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => myu()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " التعديل علئ الصوره ",
                  style: TextStyle(color: Colors.black),
                ),
                tileColor: Colors.black,
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyWidget()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " تغير الثيم ",
                  style: TextStyle(color: Colors.black),
                ),
                tileColor: Colors.black,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => drawer()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  " خروج",
                  style: TextStyle(color: Colors.black),
                ),
                tileColor: Colors.black,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
