import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WritePage extends StatefulWidget 
{
  @override
  _WritePageState createState() => _WritePageState();
}
class _WritePageState extends State<WritePage> {
  final _nombreController = TextEditingController();final _emailController = TextEditingController();
  String nombre;
  String email;

  @override
  void dispose() 
  {
    _nombreController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(appBar: AppBar(title: Text('COLOCA TUS DATOS')),body: ListView(padding: EdgeInsets.all(10),
        children: [
          SizedBox(height: 30,),Text('NOMBRE COMPLETO'),
          SizedBox(height: 10,),
          TextField(controller: _nombreController,),
          Text('EMAIL'),
          SizedBox(height: 10,),
          TextField(keyboardType: TextInputType.emailAddress,controller: _emailController,),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () 
          {
                _getData();
                _alerta();
              },
              child: Text('ENVIAR'))
        ],
      ),
    );
  }
  void _alerta() 
  {
    showDialog(context: context,
      builder: (context) 
      {
        return AlertDialog(title: Text('GUARDADO'),content: Text('SE AGREGO CORRECTAMENTE A LA AGENDA'),
        );
      },
    );
  }
  void _getData() 
  {
    setState(() 
    {
      nombre = _nombreController.text;email = _emailController.text;
      _postData(nombre, email);
    });
  }
  void _postData(String nombre, String email) async 
  {
    try 
    {
      var url = Uri.parse('https://autenticacion-631d8-default-rtdb.firebaseio.com/agenda.json');
      var data = {'nombre': nombre, 'email': email};final response = await http.post(url, body: json.encode(data));
      if (response.statusCode == 200) 
      {
        print('GUARDADO CORRECTAMENTE');
      }
    } catch (e) {}
  }
}
