import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home/home.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Thanks for your interest",
          style:
              TextStyle(fontSize: 25, color: Color.fromARGB(209, 99, 12, 115)),
        ),
        SizedBox(height: 15),
        Center(
          child: Container(
              height: 350,
              width: 350,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw0xsprXd-yYczj7-t-p7hD-FERAfmqupwYBZcWIeNvegemWFI7gDY2KujcVj-9IBAO-w&usqp=CAU",
                ),
              )),
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ));
          },
          child: Text(
            "START",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(209, 99, 12, 115),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
              Size(150, 60),
            ),
          ),
        )
      ],
    ));
  }
}
