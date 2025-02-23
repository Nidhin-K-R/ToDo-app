import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/practice/providerdemo.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back")),
          Consumer<ProviderDemo>(
            builder: (context, value, child) => IconButton(
                onPressed: () {
                  value.changing();
                },
                icon: value.mode
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.light_mode)),
          ),
        ],
      )),
    );
  }
}
