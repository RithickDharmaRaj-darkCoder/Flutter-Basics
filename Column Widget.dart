// Column Widget

import 'package:flutter/material.dart';

//void main() => runApp(MyApp()); // Simple Way
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
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.account_circle_sharp, color: Colors.white),
            Text("ACCOUNT", style: TextStyle(color: Colors.white)),
            ElevatedButton(onPressed: () {}, child: Text("Btn")),
          ],
        ),
      ),
    );
  }
}
