import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class WelcomeMobile extends StatelessWidget {
  const WelcomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1531685250784-7569952593d2?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: 400.0,
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 16,
                    ),
                    const Text(
                      "Learn",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText(
                          duration: const Duration(milliseconds: 800),
                          'Flutter',
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        RotateAnimatedText('Firebase',
                            duration: const Duration(milliseconds: 800),
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                        RotateAnimatedText(
                          duration: const Duration(milliseconds: 800),
                          'Dart',
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                        RotateAnimatedText(
                          duration: const Duration(milliseconds: 800),
                          'GitHub',
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        RotateAnimatedText(
                          duration: const Duration(milliseconds: 800),
                          'Python',
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(40),
              ),
              height: 400.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText('- It is not enough to do your best,',
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                      TyperAnimatedText(
                          '- You must know what to do,and then do your best,',
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple)),
                      TyperAnimatedText(
                          '- Let\'s deep dive in the world of programming,',
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
