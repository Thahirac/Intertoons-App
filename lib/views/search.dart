/*



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
*/
/*import 'package:fooddeliverproject/productdetails.dart';*//*

import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:intertoons/model/product1.dart';
*/
/*import 'home model.dart';*//*

class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}
class _Home_pageState extends State<Home_page> {
  Future<Welcome> getdata()async{
    String url="http://fda.intertoons.com/api/V1/products";
    Map data= {
      "currentpage":1,
      "pagesize":100,
      "sortorder": {
        "field":"menu_name",
        "direction":"desc"
      },
      "searchstring":"",
      "filter":{
        "category":""
      }
    };
    var dataenc= json.encode(data);

    var respose=  await http.post(url,headers: {"Authorization" : "Bearer akhil@intertoons.com"},body: dataenc);
    if(respose.statusCode == 200){
      return Welcome.fromJson(jsonDecode(respose.body));
    }else{
      print("no data");
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    getdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: CustomAppBar(
        height: 300,
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 5),
            child: Text("35 Results Found",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          FutureBuilder(
              future: getdata(),
              builder: (context,snapshot){
                List<Product> abc=snapshot.data.data.products;
                if(snapshot.hasData){
                  return GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: abc.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 0.60,
                      ),
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                            //color: Colors.blue,
                            // height: 200,
                            // width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //  Text(abc[index].name),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Card(
                                        color: Colors.red,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                        child: abc[index].image!=null?Image.network(abc[index].image,height: 100,width: 100): Image.asset('images/burger.png',height: 100,width: 100)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15,left: 13,bottom: 10),
                                  child: Text(abc[index].name,style: TextStyle(color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text(abc[index].sku,style: TextStyle(color: Colors.black54),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13,top: 30),
                                  child: Row(
                                    children: [
                                      Text(abc[index].price,style: TextStyle(color: Colors.purple[900]),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 74),
                                        child: GestureDetector(
                                            onTap: (){
                                              */
/*Navigator.push(context, MaterialPageRoute(builder: (context)=> Product_det()));*//*

                                            },
                                            child: Icon(Icons.arrow_forward_sharp,color: Colors.yellow[700],)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                }else{
                  return Container(margin: EdgeInsets.all(200),
                      child: Center(child: CircularProgressIndicator()));
                }
              }),
        ],
      ),
    );
  }
}

////////

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
                    SizedBox(width: 124,),
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






*/

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/route_manager.dart';

import 'package:intertoons/model/product1.dart';
import 'package:http/http.dart'as http;
import 'package:intertoons/views/cart.dart';
import 'package:intertoons/views/productdetails.dart';

class HomeProduct extends StatefulWidget {
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {

  Future<Welcome> getdata()async{

    String url="http://fda.intertoons.com/api/V1/products";


    
    Map data1={
      "currentpage":1,
      "pagesize":100,
      "sortorder": {
        "field":"menu_name",
        "direction":"desc"
      },
      "searchstring":"",
      "filter":{
        "category":""
      }
    };


    var view=jsonEncode(data1);

    var responce= await http.post(url,headers: {
      "Authorization": "Bearer akhil@intertoons.com"
    },
      body: view
    );
    if(responce.statusCode==200)
      {
        print("Success");


        return Welcome.fromJson(jsonDecode(responce.body));


      }
    else
      {
        print("No Connection");
      }

  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(
        height: 210,
      ),

      body:
      ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Text("5 Results Found",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          FutureBuilder(future:getdata()
              ,builder: (context,snapshot){


           if(snapshot.hasData)
             {
               List<Product> arr=snapshot.data.data.products;
               return Padding(
                 padding: const EdgeInsets.all(8),
                 child: GridView.builder(
                     physics: ScrollPhysics(),
                     itemCount: arr.length,
                     shrinkWrap: true,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       mainAxisSpacing: 8,
                       crossAxisCount: 2,
                       crossAxisSpacing: 10,
                       childAspectRatio: 0.70,

                     ),
                     itemBuilder: (context,index){
                       return ClipRRect(borderRadius: BorderRadius.circular(20),
                         child: Container(
                           color: Colors.white,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: Column(
                               children: [

                                 Padding(
                                   padding: const EdgeInsets.only(left: 22),
                                   child: Row(

                                     children: [
                                       Card(
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(10)),
                                           child: Container(
                                               height: 110,width: 110,

                                               child: ClipRRect(
                                                   borderRadius: BorderRadius.circular(10),
                                                   child: Image.network(arr[index].image.toString(),fit: BoxFit.fill,)))),

                                     ],
                                   ),
                                 ),
                                 SizedBox(height: 15,),

                                 Column(mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(arr[index].name,style: TextStyle(fontSize: 12),),
                                     SizedBox(height: 15,),

                                     Text(arr[index].sku,style: TextStyle(fontSize: 10),),
                                     SizedBox(height: 25,),
                                     Row(
                                       children: [
                                         Text(arr[index].price,style: TextStyle(fontSize: 14,color: Colors.deepPurpleAccent.shade200),),
                                         SizedBox(width: 100,),
                                         GestureDetector(
                                           onTap: (){
                                            Get.to(ProductDetails(
                                              image: arr[index].image.toString(),
                                              name: arr[index].name.toString(),price: arr[index].price.toString(),
                                              sku: arr[index].sku.toString(),
                                              id: arr[index].id,
                                              description: arr[index].description,

                                              ),);
                                           },
                                             child: Icon(Icons.arrow_forward,color: Colors.amberAccent,))

                                       ],
                                     ),

                                   ],
                                 ),

                               ],
                             ),
                           ),
                         ),
                       );
                     }
                 ),
               );
             }
           else
             {
               return Column(
                 children: [
                   SizedBox(height: 230,),
                   Center(child: CircularProgressIndicator()),
                 ],
               );
             }

          })
        ],
      )







    );
  }
}


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

                    Icon(Icons.arrow_back,color: Colors.white ,),
                    SizedBox(width: MediaQuery.of(context).size.width *0.35,),
                    Text("Search",style: TextStyle(fontSize: 15,color: Colors.white),)

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



