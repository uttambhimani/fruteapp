import 'package:flutter/material.dart';
import 'package:fruteapp/main.dart';
import 'package:fruteapp/model.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {

  int pprice = 20;

  @override
  Widget build(BuildContext context) {
    Model m1 = ModalRoute.of(context)!.settings.arguments as Model;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back,color: Colors.black,),),
          elevation: 0,
        ),


        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  child: Image.asset("${m1.photo}"),
                ),
                Text(
                  "${m1.name}",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today.",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              pprice = pprice - 20;
                            });
                          }, icon: Icon(Icons.remove,color: Colors.black,)),
                          Text(
                            "₹ $pprice",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(onPressed: (){
                            setState(() {
                              pprice = pprice + 20;
                            });
                          }, icon: Icon(Icons.add,color: Colors.black,)),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          Model m1 = Model(
                              pprice: pprice.toString()
                          );
                          photos..add(m1.photo);
                          name..add(m1.name);
                          price.add(pprice);
                          Navigator.pushNamed(context, '/cart',arguments: m1);
                        },
                        child: Text(
                          "Add To Cart",
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}