import 'package:flutter/material.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Services"),
        ),
        body: Center(child: Container(child: Text("Servicessss"))));
  }
}
