import 'package:flutter/material.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> sKey;

  const NavigationBarMobile({Key key, this.sKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              sKey.currentState.openDrawer();
            },
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}
