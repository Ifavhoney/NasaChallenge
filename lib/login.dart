import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class Astronaut {
  String email = "";
  String password = "";
}

class _LoginState extends State<Login> {
  //Create Object + form key
  Astronaut astronaut = new Astronaut();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.blue.shade400,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[Text("hello")],
            ),
          ),
        ));
  }
}
