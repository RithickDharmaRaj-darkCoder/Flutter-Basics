// Text Field - Numbers input, Text Area allocation

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
                    keyboardType: TextInputType.number,
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
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.brush),
                        hintText: "Share Your Feedback",
                        labelText: "Feedback",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
