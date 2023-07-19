
import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/screen_two.dart';

class HomeScreen extends StatefulWidget {
 

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
              const UserAccountsDrawerHeader(
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
                leading: const Icon(Icons.home_rounded),
                title: const Text('Home Screen'),
                onTap: () {
                  Navigator.pushNamed(context, RouteName.HomeScreen);
                },
              ),
              ListTile(
                leading: const Icon(Icons.login_rounded),
                title: const Text('Screen Two'),
                onTap: () {
                  Navigator.pushNamed(context, RouteName.ScreenTwo);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_rounded),
                title: const Text('Screen Three'),
                onTap: () {
                  Navigator.pushNamed(context, RouteName.ScreenThree);
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
                Navigator.pushNamed(context, RouteName.ScreenTwo);
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
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.ScreenThree);
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
