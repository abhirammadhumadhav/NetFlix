import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  final String title;
  const SearchTitle({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return  Text(title,
    style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22
        ),);
  }
}