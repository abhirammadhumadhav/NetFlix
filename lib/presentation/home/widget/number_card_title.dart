import 'package:flutter/cupertino.dart';

import '../../widget/main_title.dart';
import 'number_card.dart';

class NumberCardTitle extends StatelessWidget {
  const NumberCardTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const MainTitle(title: "Top 10 TV Shows In India"),
        const SizedBox(height: 10,),
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) => NumberCard(index: index,),
            separatorBuilder:(context, index) => const SizedBox(width: 10,),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}