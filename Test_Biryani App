// Donne Biryani

import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

String imgBigMenu =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQurp-jQRD4-kaVDS5UPfS7L9yrFD3LXieZtlIMNl7Q3HSnTMTHo1anlevle59vbb-gCmE&usqp=CAU";

String briyaniName = "Kolkata Biryani";
String BiryaniRate = "Rs. 100";

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // Logo Area
        Container(
          height: 210,
          width: double.infinity,
          decoration: BoxDecoration(
              //color: Colors.black,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://media.licdn.com/dms/image/v2/D560BAQEYEEuwzUDAVg/company-logo_200_200/company-logo_200_200/0/1704707782345/biryani_pot_logo?e=2147483647&v=beta&t=eawnKJ499FPqvc0_iqHqXJR-yblQCP3JLwkCKEmcJJY"),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 10),

        // Menu Area - Horizontal
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 10),
              buildContainer_menu("Kolkata Biryani"),
              SizedBox(width: 10),
              buildContainer_menu("Hyderabad Biryani"),
              SizedBox(width: 10),
              buildContainer_menu("Ambur Biryani"),
              SizedBox(width: 10),
              buildContainer_menu("Kerala Biryani")
            ],
          ),
        ),

        //Part 2
        Container(
          height: 390,
          width: double.infinity,
          //color: Colors.grey,
          child: Row(
            children: [
              //menu imgs left area
              Container(
                height: 350,
                width: 150,
                //color: Colors.red,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      buildGestureDetector_menu(
                          "https://www.shutterstock.com/image-vector/asian-asia-india-indian-arab-600nw-2512128593.jpg",
                          "Kolkata Biryani"),
                      SizedBox(height: 15),
                      buildGestureDetector_menu(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgcU38DZcCZPoUpt5IgseJewQGO4no_TSiD6moQrGZBgpAN864FIGwMtU3laDZN2-iLnI&usqp=CAU",
                          "Hyderabad Biryani"),
                      SizedBox(height: 15),
                      buildGestureDetector_menu(
                          "https://img.freepik.com/premium-photo/top-view-delicious-spicy-chicken-biryani-traditional-bowl-white-background-indian-food_667286-7331.jpg",
                          "Ambur Biryani"),
                      SizedBox(height: 15),
                      buildGestureDetector_menu(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvvC6eDgld5tpEd0cILLXYyxqm8uQPEssGfHIsI1R7f6E_-fgPhfCpzkLCWewtHNxYCDI&usqp=CAU",
                          "Kerala Biryani"),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              // Right Side Area
              Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(imgBigMenu), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(4, 5),
                            blurRadius: 6,
                          ),
                        ]),
                  ),
                  SizedBox(height: 5),

                  Text(
                    "Ingredients",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),

                  // Ingredients - Horizontal
                  Container(
                    width: 210,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildCircleAvatar_ing(
                              "https://media.istockphoto.com/id/477369468/photo/chicken-hen-livestock.jpg?s=612x612&w=0&k=20&c=sJjuw19DSFzMKF-A_f_otJExZJ-m9PYhP_laeesehFg="),
                          SizedBox(width: 10),
                          buildCircleAvatar_ing(
                              "https://3.imimg.com/data3/MT/RM/MY-12635700/dry-red-chilli.jpg"),
                          SizedBox(width: 10),
                          buildCircleAvatar_ing(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgIxB4TqKd66zyoFXx9QiHPP_bsfzq6xLPHA&s"),
                          SizedBox(width: 10),
                          buildCircleAvatar_ing(
                              "https://searchingforspice.com/wp-content/uploads/2012/01/Chicken-biryani-5-1024x683.jpg"),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  buildContainer_menu(briyaniName),
                  SizedBox(height: 5),
                  Text(
                    "₹. 200",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }

  CircleAvatar buildCircleAvatar_ing(img_ing) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 27,
      child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(img_ing)),
    );
  }
// Methods

  GestureDetector buildGestureDetector_menu(img, txt) {
    return GestureDetector(
      onTap: () {
        print(txt);
        setState(() {
          imgBigMenu = img;
          briyaniName = txt;
        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.brown,
                offset: Offset(4, 5),
                blurRadius: 6,
              ),
            ]),
      ),
    );
  }

  Container buildContainer_menu(menu) {
    return Container(
      height: 30,
      width: 180,
      color: Colors.black,
      child: Center(
        child: Text(menu,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent)),
      ),
    );
  }
}
