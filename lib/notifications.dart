import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text("Jesús Rafael Cano Flores",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff4f126b),
              )),
          Container(
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xff7f25a9),
              border: Border.all(
                color: const Color(0xff4f126b),
                width: 4,
              ),
              borderRadius: BorderRadius.circular(10.0),
              gradient: const LinearGradient(
                  colors: [Colors.white, Color(0xff7f25a9)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
            ),
            child: const Text(
              'Bienvenido a Comex',
              style: TextStyle(fontSize: 38, color: Color(0xff4f126b)),
            ),
          ),
          const Text(
            "Mat. 21308051280440",
            style: TextStyle(fontSize: 25, color: Color(0xff4f126b)),
          )
        ],
      ),
    ));
  }
}
