import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Hi There\n"),
                TextSpan(text: "I\'m\t"),
                TextSpan(text: "Lucky Darwai\n"),
              ])),
            ],
          ),
        )),
        Expanded(
            child: Container(
          child: Column(
            children: [FlutterLogo()],
          ),
        ))
      ],
    );
  }
}
