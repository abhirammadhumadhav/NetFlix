import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widget/custom.button.widget.dart';
import '../../widget/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Kheight,
        const Text("Comming on Friday"),
              Kheight,
              const Text("Tall Girl 2",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              Kheight,
              const Text("This hit sitcom folowws the mery midadventures of six20 - something pals as they navigate the pitfalls of the work,life and love in 1990s manhatan.",style: TextStyle(
                color: kGreyColor
              ),),
              Kheight50,
              const VideoWidget(),
              Kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CustomButtonWidget(icon: Icons.share,
                      iconSize: 25,
                      textSize: 16,
                      title: "Share",),
                      kwidth,
                      CustomButtonWidget(icon: Icons.add,
                        iconSize: 25,
                      textSize: 16,
                      title: "My List",),
                       kwidth,
                      CustomButtonWidget(icon: Icons.play_arrow,
                       iconSize: 25,
                      textSize: 16,
                      title: "Play",),
                      kwidth
                  ],
              )
      ],
    );
  }
}