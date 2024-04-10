import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text("Jesús Rafael Cano Flores",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff87193a),
              )),
          Container(
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xffff598c),
              border: Border.all(
                color: const Color(0xff87193a),
                width: 4,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Text(
              'Bienvenido a Comex',
              style: TextStyle(
                fontSize: 38,
                color: Color(0xff87193a),
              ),
            ),
          ),
          const Text(
            "Mat. 21308051280440",
            style: TextStyle(fontSize: 25, color: Color(0xff87193a)),
          )
        ],
      ),
    ));
  }
}
