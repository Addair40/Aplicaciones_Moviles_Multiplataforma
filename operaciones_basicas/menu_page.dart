import 'package:flutter/material.dart';
import 'package:operaciones_basicas/pages/operaciones_page.dart';

class MyApp extends StatelessWidget {
  static const String _tittle = 'OPERACIONES BASICAS';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _tittle,
      home: Operador(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class Operador extends StatefulWidget {
  Operador({Key key}) : super(key: key);

  @override
  _OperadorState createState() => _OperadorState();
}

class _OperadorState extends State<Operador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("OPERACIONES BASICAS",
            style: TextStyle(
              fontSize: 35.0,
              fontFamily: 'Raleway',
            )),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text("OPERACIONES +-*/"),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Operadorespage();
            }
            ));
          }),
    );
  }
}