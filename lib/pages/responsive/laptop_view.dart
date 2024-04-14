import 'package:flutter/material.dart';
import 'package:my_blog/pages/home_page.dart';

class LaptopView extends StatelessWidget {
  const LaptopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
            Expanded(child: Text('LUCKY')),
          ],
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text("HOME")),
          TextButton(onPressed: () {}, child: Text("SERVICES")),
          TextButton(onPressed: () {}, child: Text("PROJECTS")),
          TextButton(onPressed: () {}, child: Text("ABOUT")),
          TextButton(onPressed: () {}, child: Text("CONTACT")),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.10,
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [HomePage()],
          ),
        ),
      ),
    );
  }
}
