// Check Box (Statefull)

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

bool cb1 = false;
bool cb2 = false;
bool cb3 = false;
bool cb4 = false;

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
                Text("Interested Languages",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.normal)),
                Row(
                  children: [
                    Checkbox(
                        value: cb1,
                        onChanged: (value) {
                          setState(() {
                            cb1 = value ?? false;
                          });
                          print(value);
                        }),
                    Text("Flutter")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: cb2,
                        onChanged: (value) {
                          setState(() {
                            cb2 = value ?? false;
                          });
                          print(value);
                        }),
                    Text("Python")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: cb3,
                        onChanged: (value) {
                          setState(() {
                            cb3 = value ?? false;
                          });
                          print(value);
                        }),
                    Text("JavaScript")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: cb4,
                        onChanged: (value) {
                          setState(() {
                            cb4 = value ?? false;
                          });
                          print(value);
                        }),
                    Text("Java")
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
