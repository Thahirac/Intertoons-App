import 'package:flutter/material.dart';
import 'package:intertoons/views/Home.dart';
import 'package:intertoons/views/cart.dart';
import 'package:intertoons/views/frontpage.dart';
import 'package:intertoons/views/search.dart';
import 'package:intertoons/views/profile.dart';
import 'package:intertoons/views/search.dart';
import 'package:get/route_manager.dart';
import 'package:intertoons/views/splashscreen.dart';


import 'views/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}





class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int  _selectedIndex =0;
  void ontap(int index)
  {
    setState(() {

      _selectedIndex = index;

    });
  }
  List<Widget>kk;

  void initState(){

    kk=[
      Home(),
      HomeProduct(),
      Cart(),
      Profile(),
    ];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(



        selectedItemColor: Colors.deepPurpleAccent.shade100,
        unselectedItemColor: Colors.black45,

        items:
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "",

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "",

          ),
        ],

        currentIndex: _selectedIndex,

        onTap:ontap ,

      ),

     body:
     kk[_selectedIndex],

    );
  }
}
