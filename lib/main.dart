import 'package:flutter/material.dart';
import 'package:the_basics/views/homeview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'OpenSans',
            ),
      ),
      home: HomeView(),
    );
  }
}
