import 'package:flutter/material.dart';

import '../views/home/home_view.dart';
import '../views/about/about_view.dart';
import '../views/episodes/episodes_view.dart';
import './routes.dart';

Route<dynamic> generateRoute(settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());
    default:
  }
}

PageRoute _getPageRoute(child) {
  return MaterialPageRoute(builder: (ctx) => child);
}
