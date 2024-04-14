import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:gap/gap.dart';

import 'package:lottie/lottie.dart';
import 'package:my_blog/utils/styles.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(50),
        Container(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(text: "Hi There,\n", style: mainStyle),
            WidgetSpan(
              child: SizedBox(height: 35), // Add height between text spans
            ),
            TextSpan(text: "I\'m\t", style: mainStyle),
            TextSpan(text: "Lucky Darwai\n", style: nameStyle),
            WidgetSpan(
              child: SizedBox(height: 20), // Add height between text spans
            ),
            TextSpan(
                text: "Passionate\t\t",
                style: TextStyle(color: Colors.black54, fontSize: 24)),
            TextSpan(
                text: "Flutter Developer\n",
                style: TextStyle(color: Colors.redAccent, fontSize: 20)),
          ])),
        ),
        Container(
          height: 400,
          // width: 200,
          child: Lottie.network(
            'https://lottie.host/3e89e5b2-d1ea-4178-9ed3-ba1888a35cc1/mPETZCXdBw.json',
          ),
        ),
        Gap(15),
        Container(
          width: 120,
          child: MaterialButton(
            color: Colors.black,
            hoverColor: Colors.orange,
            splashColor: Colors.orangeAccent,
            textColor: Colors.white,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("About me"), Icon(Icons.forward_rounded)],
            ),
          ),
        ),
        Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterSocialButton(
              title: "Email",
              onTap: () {},
              mini: true,
              buttonType: ButtonType.email,
            ),
            FlutterSocialButton(
              title: "Linkedin",
              onTap: () {},
              mini: true,
              buttonType: ButtonType.linkedin,
            ),
            FlutterSocialButton(
              title: "Github",
              onTap: () {},
              mini: true,
              buttonType: ButtonType.github,
            ),
          ],
        ),
        Gap(10)
      ],
    );
  }
}

class HomePageLaptop extends StatelessWidget {
  const HomePageLaptop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gap(50),
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Hi There,\n", style: mainStyle),
                WidgetSpan(
                  child: SizedBox(height: 35), // Add height between text spans
                ),
                TextSpan(text: "I\'m\t", style: mainStyle),
                TextSpan(text: "Lucky Darwai\n", style: nameStyle),
                WidgetSpan(
                  child: SizedBox(height: 20), // Add height between text spans
                ),
                TextSpan(
                    text: "Passionate\t\t",
                    style: TextStyle(color: Colors.black54, fontSize: 30)),
                TextSpan(
                    text: "Flutter Developer\n",
                    style: TextStyle(color: Colors.redAccent, fontSize: 25)),
              ])),
              Gap(15),
              Container(
                width: 120,
                child: MaterialButton(
                  color: Colors.black,
                  hoverColor: Colors.orange,
                  splashColor: Colors.orangeAccent,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("About me"), Icon(Icons.forward_rounded)],
                  ),
                ),
              ),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterSocialButton(
                    title: "Email",
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.email,
                  ),
                  FlutterSocialButton(
                    title: "Linkedin",
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.linkedin,
                  ),
                  FlutterSocialButton(
                    title: "Github",
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.github,
                  ),
                ],
              )
            ],
          ),
        )),
        Expanded(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                // width: 200,
                child: Lottie.network(
                    'https://lottie.host/3e89e5b2-d1ea-4178-9ed3-ba1888a35cc1/mPETZCXdBw.json'),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
