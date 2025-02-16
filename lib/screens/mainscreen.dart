import 'package:flutter/material.dart';
import 'package:to_do_app/screens/homescreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
          visible: checkBoxValue,
          child: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            onPressed: () {},
            child: Icon(Icons.arrow_forward),
          )),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 100),
            child: Text(
              "Hey ${userName}......",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset("assets/content.png"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Accept all and continue"),
              Checkbox(
                  value: checkBoxValue,
                  onChanged: (bl) {
                    setState(() {
                      checkBoxValue = bl!;
                      if (checkBoxValue == true) {}
                    });
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
