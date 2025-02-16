import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              "assets/boyIcon.png"),
        ],
      ),
    );
  }
}
