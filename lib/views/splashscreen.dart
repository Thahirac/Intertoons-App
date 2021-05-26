import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intertoons/views/frontpage.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LandPage()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
          const EdgeInsets.all(130),
          child: Container(
            child: Image.asset("image/it.png",height: 150,width: 150,),
          ),
        ),
      ),
    );
  }
}
