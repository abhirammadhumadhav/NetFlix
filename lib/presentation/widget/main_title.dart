import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22
        ),);
  }
}