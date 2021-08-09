import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String email;
  String password;

  void dispose() 
  { _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) 
  { return Scaffold(
      appBar: AppBar(title: Text('BIENVENIDO'),),
      body: _loginForm(),);
  }

  Widget _loginForm() 
  { return ListView(key: _formKey,padding: EdgeInsets.symmetric(horizontal: 90),children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Text("EMAIL:"),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: TextField(keyboardType: TextInputType.emailAddress,controller: _emailcontroller,decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Ingresa tu email@ejemplo.com"),
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Text("CONTRASEÑA"),),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: TextField(keyboardType: TextInputType.visiblePassword,obscureText: true,controller: _passwordcontroller,decoration: InputDecoration(border: OutlineInputBorder(), hintText: "******************"),
          ),
        ),
        ElevatedButton(onPressed: _getValues,child: Text('INGRESAR'),
        ),
        SizedBox(width: 40,),
        Padding(padding: EdgeInsets.symmetric(vertical: 40),
          child: ElevatedButton(
              child: Container(
                child: Text('¿TE GUSTARIA REGISTRARTE?'),),
              onPressed: () 
              {
                Navigator.pushNamed(context, 'registro');
              }),
        ),
      ],
    );
  }
  String validatePassword(String value) {
    print("valorrr $value passsword ${_passwordcontroller.text}");
    if (value != _passwordcontroller.text) {
      return "ERROR EN LAS CONTRASEÑAS";
    }
    return null;
  }
  String validateEmail(String value) {
    String pattern =
        r'^\s@\":\s@\"]+)*)|(\".+\"))[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) 
    {
      return "CORREO OBLIGATORIO";
    } else if (!regExp.hasMatch(value))
    {
      return "ERROR EN EL CORREO";
    } else
    {
      return null;
    }
  }
  save() {
    if (keyForm.currentState.validate()) 
    {
      _getValues();
      print("Correo ${_emailcontroller.text}");
      keyForm.currentState.reset();
    }
  }
  void _getValues() {
    setState(() 
    {
      email = _emailcontroller.text;
      password = _passwordcontroller.text;
      authUser(email, password);
      print(email);
      print(password);
    });
  }
  void _mensaje() {
    showDialog(
      context: context,
      builder: (context) 
      {
        return AlertDialog(
            title: Text('*************************'),
            content: Text("ERROR EN TU CONTRASEÑA"));
      },
    );
  }
  void authUser(String email, String password) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCWpUyEh-ASdQdJqLGXPWNLqN3i4EocCvI');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      if (response.statusCode == 200) 
      {
        Navigator.popAndPushNamed(context, 'leer');
      }
      if (response.statusCode == 400) 
      {
        _mensaje();
      }
    } catch (error) 
    {
      print(error.toString());
    }
  }
}
