import 'package:flutter/cupertino.dart';

import 'main_card.dart';
import 'main_title.dart';

class MainCardTitle extends StatelessWidget {
  final String title;
  const MainCardTitle({
    super.key,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       MainTitle(title: title),
        const SizedBox(height: 10,),
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) => Maincard(),
            separatorBuilder:(context, index) => SizedBox(width: 10,),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}