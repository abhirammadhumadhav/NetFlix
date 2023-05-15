import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widget/custom.button.widget.dart';
import '../../widget/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 500,
          width: 50,
          child: Column(
            children: const [
              Text(
                "FEB",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const VideoWidget(),
              Row(
                children: [
                  const Text("TALL GIRL 2",style: TextStyle(
                    letterSpacing: -5,
                    fontWeight: FontWeight.bold,
                    fontSize: 36
                  ),),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(icon: Icons.all_out_sharp,
                      iconSize: 20,
                      textSize: 12,
                      title: "Remind me",),
                      CustomButtonWidget(icon: Icons.info,
                      iconSize: 20,
                      textSize: 12,
                      title: " Info",),
                      kwidth
                    ],
                  )
                ],
              ),
          Kheight,
              const Text("Comming on Friday"),
              Kheight,
              const Text("Tall Girl 2",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              Kheight,
              const Text("Landing the lead the school musical is a dream come true for jodi,until the pressure sends her confidence - and her relationship - into a tailspain.",style: TextStyle(
                color: kGreyColor
              ),)
            ],
          ),
        )
      ],
    );
  }
}


