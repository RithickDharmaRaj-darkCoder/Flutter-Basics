// List-Tile Widget

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
          // backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Color(0xff25D366),
            title: Text("WhatsApp",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ),
          body: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://media.licdn.com/dms/image/v2/D5603AQE_WTLl5IbnbA/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1725614803842?e=1741824000&v=beta&t=RKOnSCpVto5-NO4KwrQKuyd5YZ8_Han4C9eQ-jHCcTM"),
            ),
            title: Text("Dharma Raj",
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Hello World!"),
            trailing: Column(
              children: [
                Text("01/01/2025"),
                Icon(
                  Icons.done_all,
                  color: Colors.blue[600],
                )
              ],
            ),
          )),
    );
  }
}
