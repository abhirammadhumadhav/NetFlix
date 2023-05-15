import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            "https://occ-0-41-2186.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABT3cWb7LnrfZeltlTTHfEY4GHe9RT2ORKoH1xrNVsX5_UiaYaSXg_pEa0XPU-Kbb56Xue40rI6AQWLva1eAHIZeyq7tdNifG-23X6_uR-H5TUtc4BjhOVf2fGvH6fR6jgK3IDg.jpg?r=284",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
}