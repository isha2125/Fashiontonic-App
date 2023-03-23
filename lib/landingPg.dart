import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:fashiontonic/productDisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'asset/banner1.jpg',
      'asset/banner2.jpg',
      'asset/banner3.jpg',
      'asset/banner4.jpg',
      'asset/banner5.jpg',
      'asset/banner6.jpg',
    ];
    List<String> list = ["All Categories", "Men", "Women", "Kids", "Unisex"];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      ],
                    )),
              ),
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Fashiontonic",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ))),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.menu_rounded),
          onPressed: () {},
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("asset/avatar.svg"),
            ),
          ),
        ],
        toolbarHeight: 80,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 227, 227, 227),
                prefixIcon: Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide.none),
                hintText: "Search",
              ),
            ),
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                scrollDirection: Axis.vertical,
                autoPlay: true,
              ),
              items: imageSliders,
            ),
          ),
          Container(
              //margin: EdgeInsets.all(50),
              height: 50,
              child: CarouselSlider(
                options: CarouselOptions(
                  disableCenter: true,
                  viewportFraction: 0.4,
                  //itemMargin: EdgeInsets.all(10),
                ),
                items: list
                    .map((item) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            //padding: EdgeInsets.all(10),
                            //height: 10,

                            child: Center(child: Text(item.toString())),
                          ),
                        ))
                    .toList(),
              )),
          Column(
            children: [
              GridView.count(
                crossAxisCount: 2,
                physics:
                    NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                shrinkWrap: true,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                    child: ListTile(
                      title: Image.asset(
                        "asset/pinkshirt.jpg",
                        fit: BoxFit.cover,
                        height: 100,
                        // width: 100,
                      ),
                      subtitle: Center(
                        child: Column(
                          children: [
                            Text(
                              "T-Shirt",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$100.00",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Image.asset(
                        "asset/blacktshirt.jpg",
                        fit: BoxFit.cover,
                        height: 100,
                        // width: 100,
                      ),
                      subtitle: Center(
                        child: Column(
                          children: [
                            Text(
                              "T-Shirt",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$100.00",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Image.asset(
                        "asset/greendress.jpg",
                        fit: BoxFit.cover,
                        height: 100,
                        // width: 100,
                      ),
                      subtitle: Center(
                        child: Column(
                          children: [
                            Text(
                              "T-Shirt",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$100.00",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Display()));
                                },
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Image.asset(
                        "asset/whitedress.jpg",
                        fit: BoxFit.cover,
                        height: 100,
                        // width: 100,
                      ),
                      subtitle: Center(
                        child: Column(
                          children: [
                            Text(
                              "T-Shirt",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$100.00",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Image.asset(
                        "asset/tshirtwhite.jpg",
                        fit: BoxFit.cover,
                        height: 100,
                        // width: 100,
                      ),
                      subtitle: Center(
                        child: Column(
                          children: [
                            Text(
                              "T-Shirt",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$100.00",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
