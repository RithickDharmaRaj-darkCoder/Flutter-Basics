// Test - Story Page

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Mad Week Ever",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.purpleAccent),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.purple),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(120)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images7.alphacoders.com/498/498308.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  Text(
                    "      My husband used to beat me. That was how I ended up out there that evening behind our house, just past the bushes, through the tall grass, in front of the pipelines. Our small house was the last in the village, practically in the forest itself. So nobody ever saw or heard him beating me.\n     Going out there was the best way to put space between me and him without sending him into further rage. When I went behind the house, he knew where I was and he knew I was alone. But he was too full of himself to realize I was thinking about killing myself.\n     My husband was a drunk, like too many of the members of the Niger Delta People’s Movement. It was how they all controlled their anger and feelings of helplessness. The fish, shrimps and crayfish in the creeks were dying. Drinking the water shriveled women’s wombs and eventually made men urinate blood.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
