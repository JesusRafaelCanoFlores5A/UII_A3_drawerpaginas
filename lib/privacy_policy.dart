import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text("Jesús Rafael Cano Flores",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xffe86076),
              )),
          Container(
            margin: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Color(0xffe86076),
              shape: BoxShape.circle,
            ),
            width: 150,
            height: 150,
          ),
          const Text(
            "Mat. 21308051280440",
            style: TextStyle(fontSize: 25, color: Color(0xffe86076)),
          )
        ],
      ),
    ));
  }
}
