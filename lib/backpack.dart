import 'package:flutter/material.dart';

//BackPack is a screen where the user selects everything &
//once all is selected He may proceed

class BackPack extends StatefulWidget {
  @override
  _BackPackState createState() => _BackPackState();
}

class _BackPackState extends State<BackPack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyBackPack"),
      ),
    );
  }
}
