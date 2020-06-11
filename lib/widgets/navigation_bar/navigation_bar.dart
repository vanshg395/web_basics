import 'package:flutter/material.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> sKey;

  const NavigationBar({Key key, this.sKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(sKey: sKey),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
