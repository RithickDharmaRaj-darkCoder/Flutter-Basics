// test 01 - Hotel Page

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
        body: Column(children: [
          Container(
            // Image Area
            height: 380,
            width: double.infinity,
            //color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //Big Chicken
                  height: 380,
                  width: 260,
                  decoration: BoxDecoration(
                      //color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMt1x8M1nPdM3Y3E6Ky6Iy9GTakUH3xRfS65-pm5wm_2oTqBdyazlhfbY&s"),
                          fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(105))),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // Mini Images
                  children: [
                    buildMainCircleAvatar(
                        "https://images.unsplash.com/photo-1532550907401-a500c9a57435?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Z3JpbGxlZCUyMGNoaWNrZW58ZW58MHx8MHx8fDA%3D"),
                    buildMainCircleAvatar(
                        "https://plus.unsplash.com/premium_photo-1695931844305-b5dd90ab6138?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Z3JpbGxlZCUyMGNoaWNrZW58ZW58MHx8MHx8fDA%3D"),
                    buildMainCircleAvatar(
                        "https://images.unsplash.com/photo-1682794213908-767bce4ad897?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGdyaWxsZWQlMjBjaGlja2VufGVufDB8fDB8fHww"),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            // for space
            height: 10,
          ),
          Text("Krishnagiri Fried Chicken",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "    It's low in calories, low in fat and has a high nutritional value. Grilled chicken is also a great source of protein!",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            buildRateContainer("₹ 250"),
            buildRateContainer("1 + 1"),
            Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("+ 5 ",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                )
              ]),
            ),
          ])
        ]),
      ),
    );
  }

  Container buildRateContainer(text) {
    return Container(
      height: 70,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(text,
            style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  CircleAvatar buildMainCircleAvatar(mini_img) {
    return CircleAvatar(
      radius: 45,
      backgroundColor: Colors.green,
      child: CircleAvatar(
        radius: 43,
        backgroundImage: NetworkImage(mini_img),
      ),
    );
  }
}
