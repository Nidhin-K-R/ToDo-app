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
        title: Text("Enter your ToDo's"),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return Card();
          }),
    );
  }
}
