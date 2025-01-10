// Expansion Tile Card Widget

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

//new method of calling
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
          title: Text("Expansion Tile Widget",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.lightGreenAccent),
      body: Column(
        children: [
          buildStdExpansionTileCard(),
          buildStdExpansionTileCard(),
          buildStdExpansionTileCard(),
        ],
      ),
    );
  }

  ExpansionTileCard buildStdExpansionTileCard() {
    return ExpansionTileCard(
      leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://media.licdn.com/dms/image/v2/D5635AQEMpfc4djqYbQ/profile-framedphoto-shrink_200_200/profile-framedphoto-shrink_200_200/0/1736318941892?e=1737108000&v=beta&t=A10cORSslXaU7a60qCvByaQ3W5IkxajgRsotItgyHmQ")),
      title: Text("Dharma Raj",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
      subtitle: Text("STD001"),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.bloodtype,
                color: Colors.redAccent,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "O+ ve",
                style: TextStyle(
                  fontSize: 23,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blueAccent,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "8870360331",
                style: TextStyle(
                  fontSize: 23,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.home,
                color: Colors.purple,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "D.No: 20/45, Periyasamy Street,\nPaparapatti, Krishnagiri Dt,\nTN-24, Pin: 635001",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Exams")
                  ],
                )),
            TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Icon(Icons.book),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Attendance")
                  ],
                )),
            TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Icon(Icons.money),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Pay Fee")
                  ],
                ))
          ],
        )
      ],
    );
  }
}
