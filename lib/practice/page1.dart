import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/practice/page2.dart';
import 'package:to_do_app/practice/providerdemo.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => Page2()));
              },
              child: Text("Next")),
          Consumer<ProviderDemo>(
            builder: (context, value, child) => IconButton(
              onPressed: () {
                value.changing();
              },
              icon: value.mode ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
            ),
          )
        ],
      )),
    );
  }
}
