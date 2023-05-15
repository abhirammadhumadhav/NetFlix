import 'package:flutter/cupertino.dart';

import '../../core/constants.dart';

class Maincard extends StatelessWidget {
  const Maincard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration:  BoxDecoration(
         borderRadius: Kradius,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://m.media-amazon.com/images/M/MV5BMjE3MGNlNjctOWExMC00MGVlLTk2ODAtOTE3ZTcwMWYzNzdhXkEyXkFqcGdeQXVyMTE2NzA0Ng@@._V1_FMjpg_UX1000_.jpg"))
      ),
    );
  }
}