import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intertoons/costom/controller.dart';
import 'package:intertoons/main.dart';
import 'package:intertoons/views/Home.dart';


class LandPage extends StatelessWidget {
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.deepPurpleAccent.shade200,),
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent.shade200,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: -20,
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      color: Colors.deepPurpleAccent.shade200),
                )),
            PageView.builder(
                onPageChanged: controller.selectedIndexPage,
                itemCount: controller.onboardingContents.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                              height: 220,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(controller
                                        .onboardingContents[index].image)),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 80,
                          width: 270,
                          child: Text(
                            controller.onboardingContents[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              controller.onboardingContents[index].description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 140,
              left: 156,
              child: Row(
                  children: List.generate(
                      controller.onboardingContents.length,
                          (index) => Obx(() {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                            controller.selectedIndexPage.value == index
                                ? Colors.deepPurpleAccent.shade200
                                : Colors.indigo.shade200
                          ),
                        );
                      }))),
            ),
            Positioned(
                bottom: 50,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Main()));
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepPurpleAccent.shade200),
                      child: Center(
                        child: Text(
                          "Get Start",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.amber.shade600, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}





















/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../main.dart';


class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List<PageViewModel> getPages() {
    return [

      PageViewModel(
          image: Image.asset("image/food1.jpg",),
          title: 'Quick Delivery at,  \n your door',
          body: "",
          footer: Padding(
            padding: const EdgeInsets.only(left: 30,bottom: 50),
            child: Text("Nullam a tincidunt tortor. Etiam varius sed velit ac vehicula. Suspendisse quis ligula sed ipsum dignissim facilisis. Maecenas dapibus vitae"),
          ),
          decoration: const PageDecoration(
            //pageColor: Colors.blue,
          )),
      PageViewModel(
        image: Image.asset("image/food1.jpg"),
        title: 'Best foods at,  \n  your door',
        body: "Live Demo Text",
        footer: Padding(
          padding: const EdgeInsets.only(left: 30,bottom: 50),
          child: Text("Nullam a tincidunt tortor. Etiam varius sed velit ac vehicula. Suspendisse quis ligula sed ipsum dignissim facilisis. Maecenas dapibus vitae"),
        ),
      ),

      PageViewModel(
        image: Image.asset("image/food1.jpg"),
        title: "Live Demo page 4 ",
        body: "Live Demo Text",
        footer: Padding(
          padding: const EdgeInsets.only(left: 30,bottom: 50),
          child: Text("Nullam a tincidunt tortor. Etiam varius sed velit ac vehicula. Suspendisse quis ligula sed ipsum dignissim facilisis. Maecenas dapibus vitae"),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: true,
        showSkipButton: true,
        skip: Text("Skip"),
        done: Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.deepPurple),
          child: Center(child: Text("Get Started",style: TextStyle(color: Colors.yellow),),),
        ),
        onDone: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));
        },
      )
    );
  }
}





*/


































/*
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(

      body:


            ListView(
              children: [



                Stack(
                  children: [
                    ClipPath(
                      clipper: OvalBottomBorderClipper(),
                      child: Container(

                        height: 310,
                        color: Colors.deepPurpleAccent.shade200,
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left:15,right: 15,top:150 ),
                      child: Column(
                        children: [

                          Column(
                            children: [
                              Container(
                                height: 400,
                                child:
                                Column(
                                  children: [
                                    Image.asset("image/pic.jpg",height: 240),

                                    SizedBox(height: 25,),

                                  ],
                                ),
                              )


                        ],
                      ),


                      ],
                      ),
                    ),


                     ],
                  ),

                SizedBox(height: 150,),

                Padding(

                  padding: const EdgeInsets.all(15),
                  child: RaisedButton(
                      color: Colors.deepPurpleAccent.shade200,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Text("Get Started",style: TextStyle(color: Colors.amberAccent.shade200),),
                      onPressed:(){}


                  ),
                ),





              ],
            ),


    );
  }
}
*/


/*

Widget image_slider_carousel = Container(
  height: 245,
  width: MediaQuery.of(context).size.width,
  child: Carousel(
    boxFit: BoxFit.fill,
    images: [
      Image.asset("image/pic.jpg",height: 245,),


      Image.asset("image/pic.jpg",height: 245),

      Image.asset("image/pic.jpg",height: 245),

    ],
    autoplay: true,
    indicatorBgPadding: 0,
    dotBgColor: Colors.white,
    dotColor: Colors.deepPurple.shade100,
    dotSize: 5.0,
    showIndicator: true,
    dotIncreasedColor: Colors.deepPurple,
    dotSpacing: 8,
  ),
);
*/
