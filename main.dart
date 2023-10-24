import 'package:flutter/material.dart';
import 'mydrawer.dart';

import 'mi.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        endDrawer: drawer(),
        body: myu(),
      ),
    ));

class myu extends StatelessWidget {
  const myu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Image(image: AssetImage('assets/images/2.jpeg')),
    );
  }
}
