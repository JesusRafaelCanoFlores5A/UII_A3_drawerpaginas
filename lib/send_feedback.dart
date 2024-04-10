import 'package:flutter/material.dart';

class SendFeedbackPage extends StatefulWidget {
  const SendFeedbackPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text("Jesús Rafael Cano Flores",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff0f694b),
              )),
          Container(
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: const Color(0xff32d45b),
              borderRadius: BorderRadius.circular(20.0),
            ),
            width: 250,
            height: 250,
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xff0f694b),
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 100,
            ),
          ),
          const Text(
            "Mat. 21308051280440",
            style: TextStyle(fontSize: 25, color: Color(0xff0f694b)),
          )
        ],
      ),
    ));
  }
}
