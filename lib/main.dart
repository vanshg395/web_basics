import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routers/router.dart';
import 'package:the_basics/routers/routes.dart';
import 'package:the_basics/services/navigation_service.dart';
import 'package:the_basics/views/home/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: Navigator(
        key: locator<NavigationService>().navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: HomeRoute,
      ),
    );
  }
}
