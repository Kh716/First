import 'package:flutter/material.dart';

void main() {
  runApp(khalil());
}

class khalil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TextField Examples ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController numders = TextEditingController();
  int sum = 0;
  int all = 0;

  void sumadd() {
    setState(() {
      //all = int.parse(numders.text);
      sum = numders.text.length;
    });
  }

  void allb() {
    setState(() {
      all = int.parse(numders.text);
    }
    );
  }

  void clear() {
    setState(() {
      sum = 0;
      all=0;
      numders.clear();
    });
  }

  @override
  void dispose() {
    numders.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(' التكليف '),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: numders,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'ادخل الرقم',               
              ),
            ),
            
                    SizedBox(height: 23),
            ElevatedButton(
                         onPressed: sumadd,
                         child: Text(' يعرض عدد الارقام المدخله اليه'),
            ),
            Text(
                         'عدد الارقام: $sum',
                      style: TextStyle(fontSize:22),
            ),
            SizedBox(height: 23),
            ElevatedButton(
                        onPressed: clear,
                        child: Text('تنظيف'),
            ),
          ],
        ),
      ),
    );
  }
}