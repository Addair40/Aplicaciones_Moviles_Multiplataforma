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

  div() {
    // CONVERSION DE VALORES A ENTEROS
    int Valor1 = int.parse(valor_one.text);
    int Valor2 = int.parse(valor_two.text);
    double respuesta_div = Valor1 / Valor2; //OPERACION DIVISION
    result = respuesta_div as int;
  }
  sub() {
    // CONVERSION DE VALORES A ENTEROS
    int Valor1 = int.parse(valor_one.text);
    int Valor2 = int.parse(valor_two.text);
    int respuesta_sub = Valor1 - Valor2; //OPERACION RESTA
    result = respuesta_sub;
  }
  sum() {
    // CONVERSION DE VALORES A ENTEROS
    int Valor1 = int.parse(valor_one.text);
    int Valor2 = int.parse(valor_two.text);
    int respuesta_sum = Valor1 + Valor2; //OPERACION SUMA
    result = respuesta_sum;
  }

  mul() {
    // CONVERSION DE VALORES A ENTEROS
    int Valor1 = int.parse(valor_one.text);
    int Valor2 = int.parse(valor_two.text);
    int respuesta_mul = Valor1 * Valor2; //OPERACION MULTIPLICACION
    result = respuesta_mul;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SUMA - RESTA - DIVIDIR - MULTIPLICAR ',
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: 'Arial',
            )),
        backgroundColor: Colors.red,
      ),

      body: Center(child: Row(
        children: [
          Column(children: <Widget>[
                SizedBox(
                  height: 0.0,
                ),
                Text('------INGRESA EL VALOR 1------',style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 40.0,
                  ),
                ),
                TextField(
                  controller: valor_one,),
                SizedBox(height: 40.0,),
                Text('------INGRESA EL VALOR  2------',style: TextStyle(
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
                SizedBox(height: 40.0,),
                FloatingActionButton(child: Text("SUMA"),
                    backgroundColor: Colors.red,
                    onPressed: () {
                      setState(() {
                        sum();
                      });
                    }),
                SizedBox(height: 40.0,),
                FloatingActionButton(child: Text("RESTA"),
                    backgroundColor: Colors.green,
                    onPressed: () {
                      setState(() {
                        sub();
                      });
                    }),
                SizedBox(height: 40.0,),
                FloatingActionButton(child: Text("MULT"),
                    backgroundColor: Colors.yellow,
                    onPressed: () {
                      setState(() {
                        mul();
                      });
                    }),
                SizedBox(height: 40.0,),
                FloatingActionButton(child: Text("DIVI"),
                    backgroundColor: Colors.orange,
                    onPressed: () {
                      setState(() {
                        div();
                      });
                    }),
              ],
            ),
        ],
      ),
      ),
    );
  }
}