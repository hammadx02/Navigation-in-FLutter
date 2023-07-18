// ignore: unused_import
import 'package:first_app/screen_three.dart';
import 'package:first_app/screen_two.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            child: Text('Home Screen'),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff764abc),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=400'),
                ),
                accountName: Text('Hammad Ali'),
                accountEmail: Text('hammadaali02@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.home_rounded),
                title: Text('Home Screen'),
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.login_rounded),
                title: Text('Screen Two'),
                onTap: () {
                  Navigator.pushNamed(context, ScreenTwo.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout_rounded),
                title: Text('Screen Three'),
                onTap: () {
                  Navigator.pushNamed(context, ScreenThree.id);
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenTwo.id);
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
                      'Screen Two',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenThree.id);
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
