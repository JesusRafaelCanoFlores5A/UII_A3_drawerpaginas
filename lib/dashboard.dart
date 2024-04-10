import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Center(
          child: Column(
            children: [
              const Text("Jesús Rafael Cano Flores",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffbc2733),
                  )),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffcd3643),
                      width: 10,
                    ),
                  ),
                  width: 280,
                  height: 280,
                  alignment: Alignment.center,
                  child: const Text(
                    'JC',
                    style: TextStyle(
                      fontSize: 180,
                      color: Color(0xffbc2733),
                    ),
                  ),
                ),
              ),
              const Text(
                "Mat. 21308051280440",
                style: TextStyle(fontSize: 25, color: Color(0xffbc2733)),
              )
            ],
          ),
        ));
  }
}
