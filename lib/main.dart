// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_bar_assigment/bottomScreens/home.dart';
import 'package:app_bar_assigment/bottomScreens/school.dart';
import 'package:app_bar_assigment/bottomScreens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  List<Widget> listOfWidgets = [
    HomeScreen(),
    SchoolWidget(),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.orange,
      child: Center(
        child: Text('factory'),
      ),
    ),
    MySignUpPage()
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            // DrawerHeader(
            //   child: Image.asset('images/flower.png'),
            // ),
            Container(
              height: height * 0.2,
              width: width,
              color: Colors.pink,
              child: Text('First custom header'),
            ),
            Container(
              height: height * 0.3,
              width: width,
              color: Colors.green,
              child: Center(
                child: Image.asset('images/flower.png'),
              ),
            ),
            ListTile(
              title: Text('First Item'),
              trailing: Icon(Icons.first_page),
              leading: Icon(Icons.leaderboard),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //List<int>  = [200, 322, 87834, 3947834] list of int
        // List<String>  cities = ["Lahore", "Karachi", "Bahawalpur", "Lodharan"] list of String

        // cities.elementAt(0) = "Lahore"

        // int currentEx = 0;
        // List<Container> listOfWidgets =  [Container(ee), Container(ff), Container(gg)] list of Container
        // listOfWidgets.elementAt(2) = Container(gg);

        //List<Widget> = [Text(), Contaienr(), SizedBox()] list of Widgets
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: Colors.black,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              color: Colors.black,
            ),
            label: 'School',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Settings'),
        ],
        currentIndex: currentIndex, //1
        onTap: (index) {
          //1
          currentIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: Center(
        child: listOfWidgets.elementAt(currentIndex),
      ),
    );
  }
}
