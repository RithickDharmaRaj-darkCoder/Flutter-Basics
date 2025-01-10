// Test 2 - Pulsar Bike

import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  // logo
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSufrSeMBfKEh3EUHNjrPdMZDLO2193mKr3OQ&s",
                  height: 80,
                ),
                Image.network(
                  // Red pic
                  "https://5.imimg.com/data5/SELLER/Default/2023/6/319337975/ZF/LI/NX/4954/bajaj-pulsar-125cc-1000x1000.png",
                  height: 200,
                ),
                Text(
                  "Pulsar 125 CC",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Specification",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  //color: Colors.grey,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildSpecContainer(
                            "https://eauto.co.in/cdn/shop/products/mukut-front-disc-brake-plate-bajaj-pulsar-135-664.jpg?v=1631369845",
                            "Disk"),
                        buildSpecContainer(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc5odOA7jbbDIk8fYS_wmqOsJAxU-eXVWROw&s",
                            "125 CC"),
                        buildSpecContainer(
                            "https://i.pinimg.com/564x/b4/b5/ec/b4b5eca714876d75017a2666843c3c91.jpg",
                            "45 PS"),
                        buildSpecContainer(
                            "https://i.pinimg.com/564x/09/2e/d3/092ed39174841d577c91ac844fd91ea0.jpg",
                            "45.5 KM")
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static.autox.com/uploads/2019/09/Bajaj-Pulsar-125-Motion.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildSpecContainer(img, txt) {
    return Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.red, width: 2.0)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.network(img, height: 40),
        Text(
          txt,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
