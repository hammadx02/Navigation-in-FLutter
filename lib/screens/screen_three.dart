
import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {


  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)?.settings.arguments as Map;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          backgroundColor: Color(0xff764abc),
          // ignore: prefer_const_constructors
          title: Center(
            // ignore: prefer_const_constructors
            child: Text('Screen three'),//arguments.toString()),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.HomeScreen);
              },
              child: Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff764abc).withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: const Color(0xff764abc),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Text(
                      'Home Screen',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.ScreenTwo);
              },
              child: Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff764abc).withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: const Color(0xff764abc),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Text(
                      'Screen Two',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
