import 'package:first_app/screens/home_screen.dart';
import 'package:first_app/screens/screen_three.dart';
import 'package:first_app/screens/screen_two.dart';
import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {


      case RouteName.HomeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
         case RouteName.ScreenTwo:
        return MaterialPageRoute(builder: (context) => ScreenTwo());
         case RouteName.ScreenThree:
        return MaterialPageRoute(builder: (context) => ScreenThree());

        default : return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Text('no route defined'),
          );
        },
        );
    }
  }
}
