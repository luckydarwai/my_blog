import 'package:flutter/material.dart';
import 'package:my_blog/pages/responsive/laptop/laptop_view.dart';
import 'package:my_blog/pages/responsive/mobile/mobile_view.dart';

class LayoutBuilderClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return LaptopView();
        } else {
          return MobileView();
        }
      }),
    );
  }
}
