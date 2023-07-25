import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/home_screen.dart';

class ScreenTwo extends StatefulWidget {
  

  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          backgroundColor: Color(0xff764abc),
          // ignore: prefer_const_constructors
          title: Center(
            // ignore: prefer_const_constructors
            child: Text('Screen Two'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteName.HomeScreen,
                );
                // Navigator.pop(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => HomeScreen(),
                //   ),
                // );
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
                Navigator.pushNamed(
                  context,
                  RouteName.ScreenThree,
                  // arguments: {'Name': 'Hammad', "age": 21},
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ScreenTwo(),
                //   ),
                // );
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
                      'Screen Three',
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
