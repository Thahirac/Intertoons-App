import 'package:flutter/material.dart';
import 'package:intertoons/main.dart';
class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
           Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) =>Main()));
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Order Complete",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(height: 280,),
          Column(
            children: [

              Container(
                child: Column(

                  children: [
                    Container(
                      child: Text(
                        "Your Order is placed",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Container(
                          height: 50,
                          width: 200,
                          child: Text(
                            "It is now very easy to search the best quality among all the products on the internet!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.grey),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28),
                child: Container(
                  width: 290,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9, bottom: 14),
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.indigo.shade900,
                        child: Center(
                            child: Text(
                              "Continue Shopping",
                              style: TextStyle(fontSize: 13),
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Main()));
                        }),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}




/*arr[index].image.toString()!=null?Image.network(arr[index].image.toString()):Image.asset("image/pic.jpg",),*/