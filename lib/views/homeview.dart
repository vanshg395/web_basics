import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/widgets/call_to_action.dart';
import 'package:the_basics/widgets/centered_widget.dart';
import 'package:the_basics/widgets/course_details.dart';
import 'package:the_basics/widgets/navBar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      body: CenteredView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            NavBar(),
            Expanded(
              child: ScreenTypeLayout(
                desktop: Row(
                  children: <Widget>[
                    CourseDetails(),
                    Expanded(
                      child: Center(
                        child: CallToAction('Join Course'),
                      ),
                    )
                  ],
                ),
                mobile: Column(
                  children: <Widget>[
                    CourseDetails(),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: CallToAction('Join Course'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
