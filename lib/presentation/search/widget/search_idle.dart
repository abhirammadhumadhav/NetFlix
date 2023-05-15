import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix_project/presentation/search/widget/title.dart';
const imageurl = "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/aAgGrfBwna1nO4M2USxwFgK5O0t.jpg";

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: "Top Searches"),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => SearchItemTile(),
                 separatorBuilder: (context, index) => SizedBox(height: 20,), 
                 itemCount: 10),
            )
      ],
    );
  }
}


class SearchItemTile extends StatelessWidget {
  const SearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: ScreenWidth * 0.3,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(imageurl),
            fit: BoxFit.cover
            )
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Text("Movie Name",style: TextStyle(color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
          ),),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.black,
            child: Icon(CupertinoIcons.play_fill,color: Colors.white,),
          ),
        )
      ],
    );
  }
}