import 'package:flutter/material.dart';

class TodoInterface extends StatefulWidget {
  const TodoInterface({super.key});

  @override
  State<TodoInterface> createState() => _TodoInterfaceState();
}

class _TodoInterfaceState extends State<TodoInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
    );
  }
}
