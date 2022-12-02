import 'package:flutter/material.dart';
import 'package:fruteapp/model.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List fruitname = [
    "Apple",
    "Banana",
    "Broccoli",
    "Carrot",
    "Kiwi",
    "Orange",
    "Peppers",
    "Strawberry",
    "Watermelon"
  ];
  List image = [
    "assets/images/apple.png",
    "assets/images/banana.png",
    "assets/images/broccoli.png",
    "assets/images/carrot.png",
    "assets/images/kiwi.png",
    "assets/images/orange.png",
    "assets/images/peppers.png",
    "assets/images/strawberry.png",
    "assets/images/watermelon.png",
  ];
  double price = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          centerTitle: true,
          title: Text(
            "GetX Concept",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: fruitname.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite))),
                      GestureDetector(
                        onTap: (){
                          Model m1 = Model(
                            name: fruitname[index],
                            photo: image[index],
                            price: price.toString(),
                          );
                          Navigator.pushNamed(context, '/details',arguments: m1);
                        },
                        child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(image[index])),
                      ),


                      Text("${fruitname[index]}", style: TextStyle(fontSize: 18),),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("₹ $price"),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(Icons.shopping_bag),
                          ),
                        ],
                      ),
                    ],
                  ),)
                ,
              )
              ,
            );
          },
        ),
      ),
    );
  }
}
