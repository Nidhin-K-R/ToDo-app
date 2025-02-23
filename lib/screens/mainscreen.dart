import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/practice/providerdemo.dart';
import 'package:to_do_app/screens/homescreen.dart';
import 'package:to_do_app/screens/todo_interface.dart';

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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => TodoInterface()));
            },
            child: Icon(Icons.arrow_forward),
          )),
      //backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Consumer<ProviderDemo>(
            builder: (context, value, child) => IconButton(
                onPressed: () {
                  value.changing();
                },
                icon: value.mode
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.light_mode))),
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
