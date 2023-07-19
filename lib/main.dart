import 'package:first_app/utils/routes.dart';
import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors
      initialRoute: RouteName.HomeScreen,
      onGenerateRoute: Routes.generateRoute,
      
    );
  }
}
