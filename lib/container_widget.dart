import 'dart:math';

import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  late Color color;

  @override
  void initState() {
    color = Color(Random().nextInt(0xffffffff));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: color),
    );
  }
}
