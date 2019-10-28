import 'package:flutter/material.dart';
import 'package:mybackpack/backpack.dart';

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
        backgroundColor: Colors.cyan.shade100,
        body: Container(
          alignment: Alignment.center,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  style: TextStyle(color: Colors.brown.shade500),
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  //lvl 2 - accept characters that end with the given email e.g @uoguelph
                  validator: (String value) {
                    if (value.isEmpty || !value.endsWith("@nasa.com")) {
                      return "Invalid Field";
                    } else {
                      //DO X Y Z
                      setState(() {
                        return astronaut.email = value;
                      });
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.brown.shade500),

                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                    //lvl 2 - accept characters that end with the given email e.g @uoguelph
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Invalid Field";
                      } else {
                        //DO X Y Z
                        setState(() {
                          return astronaut.password = value;
                        });
                      }
                      return null;
                    },
                  ),
                ),
                RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    if (_formKey.currentState.validate() == true) {
                      redirect();
                    }
                  },
                )
              ],
            ),
          ),
        ));
  }

//See this in API building or Data analysis
//
  Future redirect() {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (BuildContext context) {
      return BackPack();
    });

    return Navigator.of(context).push(route);
  }
}
