import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.5),
              child: IconButton(onPressed: (){},
               icon:  const Icon(Icons.volume_off,color: Colors.white)
               ),
            ),
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
               Padding(
                 padding: EdgeInsets.symmetric(vertical: 10),
                 child: CircleAvatar(
                  backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BMDZkYmVhNjMtNWU4MC00MDQxLWE3MjYtZGMzZWI1ZjhlOWJmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg"),
                 ),
               ),
            VideoActionsWidget(icon: Icons.emoji_emotions, title: "LOL"),
            VideoActionsWidget(icon: Icons.add, title: "My List"),
            VideoActionsWidget(icon: Icons.share, title: "share"),
            VideoActionsWidget(icon: Icons.play_arrow, title: "Play")
            ],
           )
          ],
        ),
      ),
    );
  }
}
class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget({super.key,required this.icon,required this.title});
   
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,color: Colors.white,),
          Text(title,style: const TextStyle(color: Colors.white,fontSize: 16),)
        ],
      ),
    );
  }
}