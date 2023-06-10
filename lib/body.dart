import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Bar",
          style: TextStyle(color: Colors.red),
        ),
      ),
      // body: Column(
      //   children: [
      //     ImageScreen(),
      //   ],
      // ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 170,
//width: 220,
            decoration: BoxDecoration(
                border: Border.all(width: 8, color: Colors.blue),
                image: const DecorationImage(
                    image: AssetImage(
                  "assets/Los.jpeg",
                ))),
          ),
          const SizedBox(
            height: 11,
          ),
          const Card(
            margin: EdgeInsets.all(20.0),
            elevation: 10.0,
            //color: Colors.blue,

            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    title: Text(
                      "Title",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    title: Text(
                      "Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    title: Text(
                      "Price",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
