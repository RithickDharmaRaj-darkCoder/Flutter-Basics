// Extrate Method (List-Tile Widget)

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
          body: Column(
            children: [
              buildListTile("Dharma Raj", "First",
                  "https://media.licdn.com/dms/image/v2/D5603AQE_WTLl5IbnbA/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1725614803842?e=1741824000&v=beta&t=RKOnSCpVto5-NO4KwrQKuyd5YZ8_Han4C9eQ-jHCcTM"),
              buildListTile("Subeksha", "Second",
                  "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAACUCAMAAADyHdbUAAAAM1BMVEWzs7P////w8PC5ubmwsLCtra329vbExMTc3Nz7+/vOzs62trbq6urm5ubBwcGqqqrV1dU2x5FzAAADxUlEQVR4nO2dC5qrIAyFVQIqILr/1Y62nbFfbadA6Jx4L/8Kcgp5kCBtmkqlUvkXcUop5xoitCGZaG9M56fF9uqcGqi9MfrJKn0+DfPY/jB2U3+6ZZh9e89o7KzRNiVBtn1kOZc3qIOAdlwloM2KhpqjgLbtFncKCaR1GJ4JaFtvTxCRZjd05rn96z6apC8CKf/K+JsEKzgeUROm383fGMQ6M4VhfG//6sy9TAV66WLMv2wjgQqoidg9+zYSp4BU7M9/ZRKmgMLLyPkCL6qyoJD2+18UNIIUuHT7Vz9AW72jU/x3Z5GS0vSxeI7CiMkHUenrCZNDW34hcwNtiEho6RF0p0Mbv0Evav8oBHhBagp+WIIZbf96fs914Qv4FWg4O2h1Y3gueHcCe4NH7yFODNow6BWgnmV/O6Jz2ZMeXJoAeCBlCsB7MVcAvCQ9vYCFKQC+haqAkwvAt0rZAk6eB06fyKoAuIAAtp9dzMEFcMvp0wtQVQBTQGA1JSQI4J2JR7T9iltKYGeuuue05S54C7Sfu3+uawBUQLym1g0D20XUF1iAFdgSaF5b9AfYtK+UANjQ+/wrwD3Q34D5QCknDrBcljWgP9DhyiHGgPUO4JUD6nml6AXovF4X2EMTznz+cQa9AIdb3hkM4NaiY3qBwZrPb6vA+1qNY4VS+JiYmY7BB8ornJIO3lu/kp0MPHrKfSU7GeCHGzfmTD8Wc++S8m79GVwZ/UheMoCPuO/J2EQGnwJ2cjpc6K7uA8nHY3QR94hLLEuNjBSwk3o4k5ICdtIqCjEp4I45oaLoJBRxB1x0JBp7YR58Jd4NFom//wpFxlJ532D9EJWQO7n2qxgBIr4ZeE6UE8gMQDdifECygLhmtcQcdiPE2N+2MpNAs71HEiegFfpVOkUuwNZOlKiAKL4WkujIlPQ1lhengBK/BZKm4O1jDAdMEHWmzxkYSylJqVE2rz/d9QLiqW766McYjkzWQd9aoVnZiTWsH/0SNErDrMNk+HNis2n4+/efaLW+wJD7G28V6T8SQdS4deeUM/4bM9igPv00HWkX+qXITbnnIqZlVfEpDbSFnKnIBZVfRfh1Kco79rpD7eDL3A96y9h56+aCGmgm6wtEnBQNZlKFig0iZz++b55S4ibUVih8IOLEMvW8sw9RP2B+/F1CYKSHmVkoFMEMuRGJXMlcy8BnjmNZD14UpcsaR5W6FFqAISueShKQ5cdVQDmqADRVAJoqAE0VgKYKQFMFoKkC0PyvAoLvhJB5R3n7JxYZSLtiWqlUKjtffGM7Zlu41IcAAAAASUVORK5CYII="),
              buildListTile("Sony", "Third",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNLnO8Y-yL1JNHp6ufrWuYZWE8YYJZAaCSsA&s"),
              buildListTile("Dhanush", "Forth",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNLnO8Y-yL1JNHp6ufrWuYZWE8YYJZAaCSsA&s"),
              buildListTile("Amma", "Fifth",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNLnO8Y-yL1JNHp6ufrWuYZWE8YYJZAaCSsA&s"),
              buildListTile("Appa", "Sixth",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNLnO8Y-yL1JNHp6ufrWuYZWE8YYJZAaCSsA&s")
            ],
          )),
    );
  }

  ListTile buildListTile(title, subtitle, dp) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(dp),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: Column(
        children: [
          Text("01/01/2025"),
          Icon(
            Icons.done_all,
            color: Colors.blue[600],
          )
        ],
      ),
    );
  }
}
