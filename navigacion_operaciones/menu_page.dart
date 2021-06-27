import 'package:flutter/material.dart';
import 'package:operaciones_basicas/pages/operaciones_page.dart';

class MyApp extends StatelessWidget {
  static const String _tittle = 'BIENVENIDO A OPERACIONES BASICAS';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _tittle,
      home: Operador(),
      theme: ThemeData(
        primarySwatch: Colors.red
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
        title: Text("BIENVENIDO A OPERACIONES BASICAS",

            style: TextStyle(
              fontSize: 80.0,
              fontFamily: 'Arial',
            )),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text("SIGUIENTE"),
                backgroundColor: Colors.red,
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