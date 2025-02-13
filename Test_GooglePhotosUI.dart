// Test - Google Photos

//import 'dart:ffi';

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
          backgroundColor: Colors.black12,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 8, // shadow
            shadowColor: Colors.white,
            title: RichText(
                text: TextSpan(
                    text: 'G',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.w700),
                    children: [
                  //TextSpan(text: 'G', style: TextStyle(color: Colors.red)),
                  TextSpan(text: 'o', style: TextStyle(color: Colors.red)),
                  TextSpan(text: 'o', style: TextStyle(color: Colors.yellow)),
                  TextSpan(text: 'g', style: TextStyle(color: Colors.blue)),
                  TextSpan(text: 'l', style: TextStyle(color: Colors.green)),
                  TextSpan(text: 'e', style: TextStyle(color: Colors.red)),
                  TextSpan(
                      text: ' Photos',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300))
                ])),
            actions: [
              Icon(Icons.add, size: 30, color: Colors.white70),
              SizedBox(width: 20),
              Icon(Icons.notifications_none_outlined,
                  size: 30, color: Colors.white70),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 22,
                backgroundImage: NetworkImage(
                    "https://png.pngtree.com/thumb_back/fh260/background/20230612/pngtree-man-in-glasses-in-a-low-poly-piece-of-art-image_2872755.jpg"),
              ),
              SizedBox(width: 10),
            ],
            //leading: Icon(Icons.menu),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.black12,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        buildContainerHscroll(
                            "https://images.unsplash.com/photo-1508138221679-760a23a2285b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHJhbmRvbXxlbnwwfHwwfHx8MA%3D%3D",
                            "Throwback Video"),
                        SizedBox(width: 10),
                        buildContainerHscroll(
                            "https://london.bridestory.com/images/c_fill,dpr_1.0,f_auto,fl_progressive,pg_1,q_80,w_680/v1/assets/aga-tomaszek-cardiff-wedding-photographer_5559_mkzhie/aga-tomaszek-photography_random-portfolio-images_1.jpg",
                            "Featured Friday"),
                        SizedBox(width: 10),
                        buildContainerHscroll(
                            "https://randomwordgenerator.com/img/picture-generator/52e4d1424f5aa914f1dc8460962e33791c3ad6e04e5074417d2e72d2954ac5_640.jpg",
                            "Spotlight on me"),
                        SizedBox(width: 10),
                        buildContainerHscroll(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlkWb3ByNH1CiWa2KO4LZxRusfNCcYoAUOQQWQ0zNCjknMXlw4OSBcwTXqXiVEkyxvhvc&usqp=CAU",
                            "Revisit the moment"),
                        SizedBox(width: 10),
                        buildContainerHscroll(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd__PysSnTayea8sLn5TNmkZFUDTQ3Hv5DDpeATeS5N9_W3LOe73WUc8PHySaxd8b-OBo&usqp=CAU",
                            "Best of January 2024"),
                        SizedBox(width: 10),
                        buildContainerHscroll(
                            "https://img.freepik.com/premium-photo/stock-photo-scary-mystical-forest_759095-60017.jpg",
                            "2024"),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
                AppBar(
                  title: Text("Yesterday",
                      style: TextStyle(color: Colors.white70)),
                  toolbarHeight: 40,
                  backgroundColor: Colors.black,
                  actions: [
                    Icon(Icons.check_circle_outline,
                        size: 20, color: Colors.white70),
                    SizedBox(width: 20),
                    Icon(Icons.more_vert_rounded,
                        size: 20, color: Colors.white70),
                    SizedBox(width: 5),
                  ],
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: double.infinity,
                              decoration: insertImage(
                                  "https://lh3.googleusercontent.com/hwau7OVWx96XaME5KpRuJ0I_MscrerK6SbRH1UwYHYaxIDQQtn7RZK02LDSfBzCreidFgDsJeXyqDct6EZiH6vsV=s1280-w1280-h800"),
                            ),
                            Container(
                              height: 60,
                              width: double.infinity,
                              decoration: insertImage(
                                  "https://lh3.googleusercontent.com/hwau7OVWx96XaME5KpRuJ0I_MscrerK6SbRH1UwYHYaxIDQQtn7RZK02LDSfBzCreidFgDsJeXyqDct6EZiH6vsV=s1280-w1280-h800"),
                            ),
                            Container(
                              height: 60,
                              width: double.infinity,
                              decoration: insertImage(
                                  "https://lh3.googleusercontent.com/hwau7OVWx96XaME5KpRuJ0I_MscrerK6SbRH1UwYHYaxIDQQtn7RZK02LDSfBzCreidFgDsJeXyqDct6EZiH6vsV=s1280-w1280-h800"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 180,
                        width: 100,
                        decoration: insertImage(
                            "https://thumbs.dreamstime.com/b/gorgeous-girl-dancing-energetically-green-park-under-sun-embodying-freedom-happiness-young-woman-joyfully-sunny-336082188.jpg"),
                      ),
                      Container(
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: double.infinity,
                              decoration: insertImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS31PpssN12AN9foa0_jJTZMPw46jzoBG9jzRHEY8hNrnCb1SlloHyLNZjsYEbRqLpP0nc&usqp=CAU"),
                            ),
                            Container(
                              height: 90,
                              width: double.infinity,
                              decoration: insertImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS31PpssN12AN9foa0_jJTZMPw46jzoBG9jzRHEY8hNrnCb1SlloHyLNZjsYEbRqLpP0nc&usqp=CAU"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                AppBar(
                  title: Text("Last Week",
                      style: TextStyle(color: Colors.white70)),
                  toolbarHeight: 40,
                  backgroundColor: Colors.black,
                  actions: [
                    Icon(Icons.check_circle_outline,
                        size: 20, color: Colors.white70),
                    SizedBox(width: 20),
                    Icon(Icons.more_vert_rounded,
                        size: 20, color: Colors.white70),
                    SizedBox(width: 5),
                  ],
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: insertImage(
                            "https://cdn.pixabay.com/photo/2016/07/07/16/46/dice-1502706_640.jpg"),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: insertImage(
                            "https://cdn.pixabay.com/photo/2016/07/07/16/46/dice-1502706_640.jpg"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 360,
                  decoration: insertImage(
                      "https://cdn.pixabay.com/photo/2018/04/03/20/26/dice-3287955_640.jpg"),
                )
              ],
            ),
          )),
    );
  }

  BoxDecoration insertImage(img) {
    return BoxDecoration(
        color: Colors.red,
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover));
  }

  Container buildContainerHscroll(img, txt) {
    return Container(
      height: 150,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              txt,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              //textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
    );
  }
}
