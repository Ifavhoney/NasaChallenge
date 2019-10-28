import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lift off!"),
      ),
      backgroundColor: Colors.cyan.shade100,
      body: Align(
        alignment: Alignment.center,
        child: Image.asset("images/check.png"),
      ),
    );
  }
}
