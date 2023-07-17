import 'package:assignment7/arguments.dart';
import 'package:assignment7/signUp.dart';
import 'package:flutter/material.dart';
import 'package:assignment7/profile.dart';

class Routes {
  static const defaultRoute = "/";
  static const profileRoute = "/Profile";
 
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case defaultRoute:
      var args = settings.arguments;
         return MaterialPageRoute(builder: (_) => const SignUp(),);
      case profileRoute:
      var args = settings.arguments as ProfileArguments;
         return MaterialPageRoute(builder: (_) => Profile(
          title: "Profile",email: args.email,
          name: args.name, number: args.number,));
      default:
         return MaterialPageRoute(
          builder: (_) => Scaffold(
          body: Center(
            child: Text("No route defined for ${settings.name}")
          ),
         ),);
    }
  }
}