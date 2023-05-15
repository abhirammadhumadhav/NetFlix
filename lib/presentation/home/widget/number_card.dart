import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Container(
              width: 150,
              height: 200,
              decoration:  BoxDecoration(
                 borderRadius: Kradius,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://m.media-amazon.com/images/M/MV5BMjE3MGNlNjctOWExMC00MGVlLTk2ODAtOTE3ZTcwMWYzNzdhXkEyXkFqcGdeQXVyMTE2NzA0Ng@@._V1_FMjpg_UX1000_.jpg"))
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -20,
          child: BorderedText(
            strokeColor: Colors.white,
            strokeWidth: 10.0,
            child: Text("${index+1}",style: const TextStyle(fontSize: 120,
            color: Colors.black,
            decoration: TextDecoration.none,
            decorationColor: Colors.black
            ),)))
      ],
    );
  }
}