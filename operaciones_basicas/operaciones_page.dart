import 'package:flutter/material.dart';

class Operadorespage extends StatefulWidget {
  Operadorespage({Key key}) : super(key: key);

  @override
  _OperadorespageState createState() => _OperadorespageState();
}

class _OperadorespageState extends State<Operadorespage> {
  final valor_one = TextEditingController();
  final valor_two = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('OPERACIONES ',
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: 'Arial',
            )),
        backgroundColor: Colors.green,
      ),

      body: Center(child: Column(children: <Widget>[
            SizedBox(
              height: 0.0,
            ),
            Text('NUMERO 1',style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 40.0,
              ),
            ),
            TextField(
              controller: valor_one,),
            SizedBox(height: 50.0,),
            Text('NUMERO 2',style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 40.0,
              ),
            ),
            TextField(
              controller: valor_two,
            ),
            SizedBox(height: 50.0,),
            Text('$result',style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 40.0,
              ),
            ),
            SizedBox(height: 30.0,),
            FloatingActionButton(child: Text("SUMA"),
                onPressed: () {
                  setState(() {
                    sum();
                  });
                }),
            SizedBox(height: 30.0,),
            FloatingActionButton(child: Text("RESTA"),
                onPressed: () {
                  setState(() {
                    sub();
                  });
                }),
            SizedBox(height: 30.0,),
            FloatingActionButton(child: Text("MULT"),
                onPressed: () {
                  setState(() {
                    mul();
                  });
                }),
            SizedBox(height: 30.0,),
            FloatingActionButton(child: Text("DIVI"),
                onPressed: () {
                  setState(() {
                    div();
                  });
                }),
          ],
        ),
      ),
    );
  }

  sum() {
    // CONVERSION DE VALORES A ENTEROS
    int Valor1 = int.parse(valor_one.text);
    int Valor2 = int.parse(valor_two.text);
    int respuesta_sum = Valor1 + Valor2; //OPERACION SUMA
    result = respuesta_sum;
  }
  sub() {
    // CONVERSION DE VALORES A ENTEROS
    int Valor1 = int.parse(valor_one.text);
    int Valor2 = int.parse(valor_two.text);
    int respuesta_sub = Valor1 - Valor2; //OPERACION RESTA
    result = respuesta_sub;
  }
  mul() {
    // CONVERSION DE VALORES A ENTEROS
    int Valor1 = int.parse(valor_one.text);
    int Valor2 = int.parse(valor_two.text);
    int respuesta_mul = Valor1 * Valor2; //OPERACION MULTIPLICACION
    result = respuesta_mul;
  }
  div() {
    // CONVERSION DE VALORES A ENTEROS
    int Valor1 = int.parse(valor_one.text);
    int Valor2 = int.parse(valor_two.text);
    double respuesta_div = Valor1 / Valor2; //OPERACION DIVISION
    result = respuesta_div as int;
  }
}