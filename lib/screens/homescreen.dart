import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/practice/providerdemo.dart';
import 'package:to_do_app/screens/mainscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

String? userName;

class _HomescreenState extends State<Homescreen> {
  TextEditingController _controller = TextEditingController();

  bool _validate = false;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          setState(() {
            userName = _controller.text;
            _validate = false;
            if (_controller.text.isNotEmpty) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => MainScreen()));
            } else {
              _validate = true;
            }
          });
        },
        child: Icon(Icons.arrow_forward),
      ),
      // backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/boyIcon.png"),
            SizedBox(
              height: 20,
            ),
            Text(
              "What is your name........?",
              style: TextStyle(fontSize: 28, fontStyle: FontStyle.italic),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  errorText: _validate ? 'Please enter your name' : null,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
