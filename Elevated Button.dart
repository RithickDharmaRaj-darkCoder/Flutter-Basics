// Elevated Button

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.white,
                elevation: 8,
                shadowColor: Colors.red,
                //textStyle: TextStyle(fontSize: 20)
              ),
              onPressed: () {
                print("Successfully Button Created !");
              },
              child: Text("Submit"),
            ),
          )),
    );
  }
}
