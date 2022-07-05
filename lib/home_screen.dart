import 'package:assignment/container_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> containers = const [ContainerWidget(), ContainerWidget()];
  bool swapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            swapped = !swapped;
          });
        },
        child: const Icon(Icons.swap_horiz),
      ),
      body: Center(
          child: SizedBox(
        height: 100,
        child: ListView(
          shrinkWrap: true,
          reverse: swapped,
          scrollDirection: Axis.horizontal,
          children: containers,
        ),
      )),
    );
  }
}
