import 'package:flutter/material.dart';

class Operadorespage extends StatefulWidget {
  Operadorespage({Key key}) : super(key: key);

  @override
  _OperadorespageState createState() => _OperadorespageState();
}
class _OperadorespageState extends State<Operadorespage> {
  final opcionuno = TextEditingController();
  final opciondos = TextEditingController();

  dynamic resultado = 0;
  int valorone = 0;
  int valortwo = 0;

  @override
  void dispose() {
    opcionuno.dispose();
    opciondos.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
        appBar: AppBar(title: Text("SUMA - RESTA - MULTIPLICA - DIVIDE"),
        ),
        body: ListView(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text("INGRESA NUMERO 1")),
            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(controller: opcionuno,decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "INGRESA NUMERO 1",
                ),
                onChanged: (num) {
                  print("$num");
                },
              ),
            ),
            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("INGRESA NUMERO 2")),
            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(controller: opciondos,decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "INGRESA NUMERO 2",
                ),
                onChanged: (num) {
                  print("$num");
                },
             ),
           ),   
            
            Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),child: Text("$resultado"),
    ),            
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(heroTag: "hola",
                  child: Icon(Icons.control_point_sharp),
                   backgroundColor: Colors.green,
                  onPressed: () {
                    setState(() {
                      valorone = int.parse(opcionuno.text);
                      valortwo = int.parse(opciondos.text);
                      resultado = valorone + valortwo;
                    });
                  }),
              SizedBox(width: 15,
              ),
              FloatingActionButton(heroTag: "hola",
                  child: Icon(Icons.do_disturb_on_rounded),
                   backgroundColor: Colors.blue,
                  onPressed: () {
                    setState(() {
                      valorone = int.parse(opcionuno.text);
                      valortwo = int.parse(opciondos.text);
                      resultado = valorone - valortwo;
                    });
                  }),
              SizedBox(width: 15,
              ),
              FloatingActionButton(
                  heroTag: "hola",
                  child: Icon(Icons.cancel_rounded),
                   backgroundColor: Colors.yellow,
                  onPressed: () {
                    setState(() {
                      valorone = int.parse(opcionuno.text);
                      valortwo = int.parse(opciondos.text);
                      resultado = valorone * valortwo;
                    });
                  }),

               SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                  heroTag: "hola",
                  child: Icon(Icons.north_east_sharp),
                   backgroundColor: Colors.orange,
                  onPressed: () {
                    setState(() {
                      valorone = int.parse(opcionuno.text);
                      valortwo = int.parse(opciondos.text);
                      resultado = valorone / valortwo;
                    });
                  }),
            ],
          ),
        ));
  }
}
