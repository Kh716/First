import 'package:flutter/material.dart';
import 'main.dart';
import 't.dart';

import 'mi.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

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
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: Text(" الرئيسه ", style: TextStyle(color: Colors.white),),
                onTap: () {},
              ),
              SizedBox(height: 10,),
              ListTile(
                title: Text(" التعديل علئ الصوره ", style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyWidget()));
                },
              ),
              SizedBox(height: 10,),
              ListTile(
                title: Text(" تغير الثيم ", style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => al()));
                },
              ),
              SizedBox(height: 10,),
              ListTile(
                title: Text(" خروج", style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(height: 10,),
            ],
          ),
        )
      ],
    ));
  }
}