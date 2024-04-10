import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text("Jesús Rafael Cano Flores",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff2c8720),
              )),
          Container(
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xff2c8720),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0),
              ),
            ),
            child: const Text(
              'Bienvenido a Comex',
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            "Mat. 21308051280440",
            style: TextStyle(fontSize: 25, color: Color(0xff2c8720)),
          )
        ],
      ),
    ));
  }
}
