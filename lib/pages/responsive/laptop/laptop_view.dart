import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_blog/pages/home_page.dart';
import 'package:my_blog/pages/responsive/laptop/welcome_laptop.dart';
import 'package:my_blog/pages/services.dart';
import 'package:my_blog/utils/styles.dart';

class LaptopView extends StatefulWidget {
  const LaptopView({super.key});

  @override
  State<LaptopView> createState() => _LaptopViewState();
}

class _LaptopViewState extends State<LaptopView> {
  bool isHoverHome = false,
      isHoverService = false,
      isHoverProject = false,
      isHoverAbout = false,
      isHoverContact = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0,
            ),
            Container(
                color: Colors.white,
                height: 50,
                child: Image(image: AssetImage("assets/images/logo.png"))),
            Expanded(
              child: Text(
                'LUCKY',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
              onHover: (value) {
                setState(() {
                  isHoverHome = value;
                });
              },
              onPressed: () {},
              child: Text(
                "HOME",
                style: navBarStyle.copyWith(
                    color: isHoverHome ? Colors.orange : null),
              )),
          TextButton(
              onHover: (value) {
                setState(() {
                  isHoverService = value;
                });
              },
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => MyServices()));
              },
              child: Text(
                "SERVICES",
                style: navBarStyle.copyWith(
                    color: isHoverService ? Colors.orange : null),
              )),
          TextButton(
              onHover: (value) {
                setState(() {
                  isHoverProject = value;
                });
              },
              onPressed: () {},
              child: Text(
                "PROJECTS",
                style: navBarStyle.copyWith(
                    color: isHoverProject ? Colors.orange : null),
              )),
          TextButton(
              onHover: (value) {
                setState(() {
                  isHoverAbout = value;
                });
              },
              onPressed: () {},
              child: Text(
                "ABOUT",
                style: navBarStyle.copyWith(
                    color: isHoverAbout ? Colors.orange : null),
              )),
          TextButton(
              onHover: (value) {
                setState(() {
                  isHoverContact = value;
                });
              },
              onPressed: () {},
              child: Text(
                "CONTACT",
                style: navBarStyle.copyWith(
                    color: isHoverContact ? Colors.orange : null),
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.10,
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  child: HomePageLaptop()),
              Container(
                height: MediaQuery.of(context).size.height,
                child: WelcomeLaptop(),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: MyServices(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
