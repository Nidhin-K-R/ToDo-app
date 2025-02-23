import 'package:flutter/material.dart';

import 'package:to_do_app/practice/providerdemo.dart';
import 'package:to_do_app/screens/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderDemo(),
      child: Consumer<ProviderDemo>(
        builder: (context, value, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: value.mode ? ThemeData.dark() : ThemeData.light(),
          home: Homescreen(),
        ),
      ),
    );
  }
}
