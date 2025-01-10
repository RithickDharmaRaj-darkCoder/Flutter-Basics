// Radio Button (Statefull)

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

String degree = "";

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://leadgenapp.io/wp-content/uploads/2022/12/shutterstock_1100033681-min-1-Edited.png"),
                    fit: BoxFit.cover)),
          ),
          Text("Feedback Form",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.italic)),
          Container(
            height: 370,
            width: double.infinity,
            //color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter Your Name",
                      labelText: "Your Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.message),
                      hintText: "Enter Your WhatsApp Number",
                      labelText: "WhatsApp Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Degree",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.italic)),
                Row(
                  children: [
                    Radio(
                        value: "UG",
                        groupValue: degree,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            degree = value.toString();
                          });
                        }),
                    Text("UG Degree"),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                        value: "PG",
                        groupValue: degree,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            degree = value.toString();
                          });
                        }),
                    Text("PG Degree"),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                        value: "SSLC",
                        groupValue: degree,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            degree = value.toString();
                          });
                        }),
                    Text("No Degree"),
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
