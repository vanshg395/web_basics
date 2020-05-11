import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  CenteredView({this.child});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Container(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 60),
        // constraints: BoxConstraints(maxWidth: 1200),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1200,
          ),
          child: child,
        ),
      ),
      tablet: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
        // constraints: BoxConstraints(maxWidth: 1200),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1200,
          ),
          child: child,
        ),
      ),
      mobile: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        // constraints: BoxConstraints(maxWidth: 1200),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1200,
          ),
          child: child,
        ),
      ),
    );
  }
}
