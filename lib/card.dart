import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:fruteapp/main.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int i = 1;
  List <double> tprice = [];
  //double price = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            },icon: Icon(Icons.arrow_back,color: Colors.black,),),
            elevation: 0,
          ),


          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style:
                        ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
                        child: Container(
                          height: 80,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                        height: 60,
                                        width: 60,
                                        child: Image.asset(photos[index])
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${name[index]}",
                                      style: TextStyle(color: Colors.black, fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                // child: Text("${pprice[index]}",style: TextStyle(color: Colors.black),),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text("Total Amount",style: TextStyle(color: Colors.black),),
                                Text("₹ ${price.sum}",style: TextStyle(color: Colors.black,fontSize: 30),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
