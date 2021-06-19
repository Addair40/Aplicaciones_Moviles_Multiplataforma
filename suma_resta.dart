import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const String _tittle = 'flutter incremento decremento';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: _tittle, home: Inc_dnc());
  }
}

class Inc_dnc extends StatefulWidget {
  Inc_dnc({Key key}) : super(key: key);

  @override
  Inc_dncState createState() => Inc_dncState();
}

class Inc_dncState extends State<Inc_dnc> {
  int numero = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FLUTTER INCREMENTO Y DECREMENTO',
            style: TextStyle(fontSize: 40.0, fontFamily: 'Arial',)
            ),
            backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0,),
            Text('INCREMENTO Y DECREMENTO: $numero',
              style: TextStyle(
                fontSize: 30,),
            ),
          ],
        ),
      ),
      floatingActionButton: butt(),
    );
  }
  resta() {
    int decremento = 3;
    int result = numero - decremento;
    numero = result;
  }
  suma() {
    int incremento = 2;
    int result = numero + incremento;
    numero = result;
  }

  Widget butt() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget> [
        SizedBox(width: 30.0,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              suma();
            });
          },
          backgroundColor: Colors.green[400],
        ),
        FloatingActionButton(
          child: Icon(Icons.horizontal_rule),
          onPressed: () {
            setState(() {
              resta();
            });
          },
          backgroundColor: Colors.red[400],
        ),
      ],
    );
  }
}