import 'dart:ui';

import 'package:fashiontonic/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: ListView(children: [
        Image.asset("asset/greendress.jpg"),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.6,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                //color: Colors.amber,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Green Jumpsuit",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "\$198.00",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sizes : ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(child: Text("S")),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(child: Text("M")),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                            child: Text(
                          "L",
                          style: TextStyle(color: Colors.white),
                        )),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(child: Text("XL")),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown...",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, fixedSize: Size(100, 50)),
          child: Text(
            "Add to Cart",
            style: TextStyle(fontSize: 23),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Cart()));
          },
        ),
      ]),
    );
  }
}
