import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clean_network_sample/src/screens/home_screen.dart';
import 'package:clean_network_sample/src/screens/splash/splash_screen.dart';

Route generateRoute(RouteSettings settings) {
  var args = settings.arguments;
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (_) => SplashScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => HomeScreen());
    case CreatePost.routeName:
      return MaterialPageRoute(builder: (_) => CreatePost());
    case PostDetailPage.routeName:
      args as String;
      return MaterialPageRoute(builder: (_) => PostDetailPage(id: args));
  }
  return generateRoute(settings);
}
