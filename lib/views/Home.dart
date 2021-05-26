import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 180,
      ),

      body:ListView(
        children: [

          Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Text("Top Of The Day",style: TextStyle(color: Colors.black87,fontSize: 16),),
                ],
              )
          ),


              Padding(
                padding: const EdgeInsets.only(top: 10,left: 22,right: 22),
                child:Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: 185,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("image/food1.jpg",
                            fit: BoxFit.cover),
                      ),
                    )),

              ),

          SizedBox(height: 30,),

          Padding(
              padding: const EdgeInsets.only(left: 20,),
              child: Row(
                children: [
                  Text("Selected Your Choise",style: TextStyle(color: Colors.black87,fontSize: 16),),
                ],
              )
          ),

          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 215,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    children: [

                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 185,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("image/food2.jpg",
                                  fit: BoxFit.cover),
                            ),
                          )),

                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 185,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("image/food1.jpg",
                                  fit: BoxFit.cover),
                            ),
                          )),


                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 185,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("image/food2.jpg",
                                  fit: BoxFit.cover),
                            ),
                          )),


                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 185,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("image/food1.jpg",
                                  fit: BoxFit.cover),
                            ),
                          )),



                    ],
                  ),
                ),
              ],
            ),
          ),


          SizedBox(height: 35,),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 215,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    children: [

                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 185,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("image/food2.jpg",
                                  fit: BoxFit.cover),
                            ),
                          )),

                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 185,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("image/food1.jpg",
                                  fit: BoxFit.cover),
                            ),
                          )),


                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 185,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("image/food2.jpg",
                                  fit: BoxFit.cover),
                            ),
                          )),


                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 185,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("image/food1.jpg",
                                  fit: BoxFit.cover),
                            ),
                          )),



                    ],
                  ),
                ),
              ],
            ),
          ),


SizedBox(height: 100,),

        ],
      ),







    );
  }
}






/*

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.quadraticBezierTo(size.width*0.0010556,size.height*0.3715143,0,size.height*0.5142857);
    path_0.cubicTo(size.width*0.1133889,size.height*0.6560286,size.width*0.3908667,size.height*0.7383429,size.width*0.5000000,size.height*0.7428571);
    path_0.cubicTo(size.width*0.6144333,size.height*0.7301429,size.width*0.8898111,size.height*0.6397714,size.width,size.height*0.5142857);
    path_0.quadraticBezierTo(size.width,size.height*0.3578286,size.width,0);

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
*/




class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;

  CustomAppBar({@required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child:  Stack(
        children: [

          ClipPath(

            clipper: OvalBottomBorderClipper(),
            child: Container(

              height: 210,
              color: Colors.deepPurpleAccent.shade200,
            ),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 58),
                child: Row(
                  children: [

                    Icon(Icons.menu_rounded,color: Colors.white ,),


                    SizedBox(width: MediaQuery.of(context).size.width *0.35,),
                    Text("Food",style: TextStyle(fontSize: 15,color: Colors.white),)

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25,left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search here..",
                          hintStyle: TextStyle(color: Colors.black45, fontSize: 11),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 20,
                            color: Colors.black45,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Container(
                              height: 15,width: 15,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.amberAccent.shade200),
                              child: Icon(
                                Icons.filter_list_alt,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                              borderSide: BorderSide(color: Colors.white)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
              )

            ],
          )




        ],
      ),
    );
  }
}
