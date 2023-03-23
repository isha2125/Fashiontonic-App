import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('asset/tshirtwhite.jpg'),
                  title: Text("Polo Neck T-Shirt"),
                  subtitle: Text("Size: M\nQuantity: 1"),
                ),
                Text(
                  "Remove",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('asset/pinkshirt.jpg'),
                  title: Text("Pink T-Shirt"),
                  subtitle: Text("Size: L\nQuantity: 1"),
                ),
                Text(
                  "Remove",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('asset/greendress.jpg'),
                  title: Text("Green Jumpsuit"),
                  subtitle: Text("Size: L\nQuantity: 1"),
                ),
                Text(
                  "Remove",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft, child: Text("Sub-Total")),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("\$198"),
                )
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft, child: Text("Shipping")),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("\$10"),
                )
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft, child: Text("Total")),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("\$208"),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 227, 227, 227),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide.none),
              hintText: "Apply Voucher",
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, fixedSize: Size(100, 50)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Text(
              "Continue",
              style: TextStyle(fontSize: 23),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Icon(Icons.arrow_forward_rounded),
            )
          ]),
        ),
      ]),
    );
  }
}
