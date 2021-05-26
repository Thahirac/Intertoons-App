import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/route_manager.dart';
import 'package:intertoons/main.dart';
import 'package:intertoons/views/ordercomplete.dart';
import 'package:intertoons/views/search.dart';

class Cart extends StatefulWidget {
  String name;
  String image;
  String price;
  String description;
  String sku;
  String isVeg;
  int id;
  Cart({Key key,this.name,this.image,this.price,this.description,
    this.isVeg,this.sku,this.id
  });

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 120,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.push((context), MaterialPageRoute(builder: (context)=>Main()));
          },

            child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),

        elevation: 0.001,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.more_vert_outlined,color: Colors.black,),
          )
        ],

      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(title: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text('Cart',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text('3',style: TextStyle(color:Colors.grey,fontSize: 16),),
              )),
          Divider(thickness: 2,),
          Column(children: [
            Container(height:200,
              margin: EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  widget.image!=null?Image.network(widget.image.toString(),width: 80,):Image.asset("image/food1.jpg",width: 145,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name.toString(),style: TextStyle(fontSize: 14),),
                      SizedBox(height: 15,),
                      Text(widget.price.toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Text('1',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),

                    ],),
                  Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.close),
                        ],
                      )
                    ],)


                ],),
            ),
            Divider(),
            Container(height:200,
              margin: EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  widget.image!=null?Image.network(widget.image.toString()):Image.asset("image/food1.jpg",width: 180,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name.toString(),style: TextStyle(fontSize: 14),),
                      SizedBox(height: 15,),
                      Text(widget.price.toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Text('2',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),

                    ],),
                  Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.close),
                        ],
                      )
                    ],)


                ],),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                children: [
                  Container(height: 50,
                    child: ListTile(title: Text('Shipping',style: TextStyle(color: Colors.grey[600],fontSize: 20),),
                      trailing: Text('Rs.995',style: TextStyle(color: Colors.grey[600],fontSize: 20)),),
                  ),
                  Container(height: 50,
                    child: ListTile(title: Text('Sub Total',style: TextStyle(color: Colors.grey[600],fontSize: 20)),
                      trailing: Text('Rs.1273',style: TextStyle(color: Colors.grey[600],fontSize: 20)),),
                  ),
                  Container(height: 50,
                    child: ListTile(title: Text('Total',style: TextStyle(color: Colors.grey[600],fontSize: 20)),
                      trailing: Text('Rs.1399',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                  ),
                ],
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Order()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width *0.9,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),color: Colors.blue[900]),
                child: Center(child: Text("Checkout",
                  style: TextStyle(color: Colors.white,
                      letterSpacing: 1,
                      fontSize: 15),)),
              ),
            ),

          ],),
          SizedBox(height: 150,)

        ],),
    );
  }
}
