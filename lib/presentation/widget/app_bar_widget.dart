import 'package:flutter/material.dart';

import '../../core/constants.dart';
class AppBarWudget extends StatelessWidget {
  const AppBarWudget({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(title,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        const Spacer(),
        const Icon(Icons.cast,color: Colors.white,),
        kwidth,
        Container(
          color: Color.fromARGB(255, 33, 166, 243),
          width: 30,
          height: 30,
        ),
        kwidth
      ],
    );
  }
}