import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/practice/providerdemo.dart';
import 'package:to_do_app/screens/homescreen.dart';

class TodoInterface extends StatefulWidget {
  const TodoInterface({super.key});

  @override
  State<TodoInterface> createState() => _TodoInterfaceState();
}

class _TodoInterfaceState extends State<TodoInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("${userName}'s ToDo's"),
        centerTitle: true,
        // backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: Consumer<ProviderDemo>(
            builder: (context, value, child) => IconButton(
                onPressed: () {
                  value.changing();
                },
                icon: value.mode
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.light_mode))),
      ),
      body: GridView.builder(
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return InkWell(child: Card());
          }),
    );
  }
}
