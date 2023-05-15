import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/core/constants.dart';
import '../widget/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
   ScreenDownloads({super.key});
 
  final WidgetList = [
    const SmartDownloads(),
          Section2(),
          const Section3()
  ];
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: const PreferredSize(child: AppBarWudget(title: "Downloads",),preferredSize: Size.fromHeight(50),) ,
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => WidgetList[index],
         separatorBuilder: (context, index) => const SizedBox(height: 25,),
          itemCount: WidgetList.length),
    );
  }
}
class Section2 extends StatelessWidget {
   Section2({super.key});
 final List imageList = [
    "https://m.media-amazon.com/images/M/MV5BODI0ZTljYTMtODQ1NC00NmI0LTk1YWUtN2FlNDM1MDExMDlhXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_.jpg",
    "https://m.media-amazon.com/images/M/MV5BMDZkYmVhNjMtNWU4MC00MDQxLWE3MjYtZGMzZWI1ZjhlOWJmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
    "https://upload.wikimedia.org/wikipedia/en/1/11/Narcos_season_3.png"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
const Text("Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
             fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24
          ),),
          const SizedBox(height: 10,),
          const Text("We will download a persionalised selection of\nmovies and shows for you, so there's\nsometing to watch always on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey,fontSize: 16),
          ),
           const SizedBox(height: 10,),
          SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                   backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: size.width * 0.4,
                ),
                DownloadsImageWisget( 
                  size: Size(size.width * 0.37, size.width * 0.58),
                  angle: 20,
                  imageList: imageList[0],
                 margin: const EdgeInsets.only(left: 170,),),
                 DownloadsImageWisget(
                  size: Size(size.width * 0.37, size.width * 0.58),
                  angle: -20,
                   imageList: imageList[1],
                 margin: const EdgeInsets.only(right: 175,),),
                 DownloadsImageWisget(
                  size: Size(size.width * 0.4, size.width * 0.67),
                   imageList: imageList[2],
                 margin: const EdgeInsets.only(left: 0,bottom: 15),)
              ],
            ),
          ),
      ],
    );
  }
}
class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
SizedBox(
  width: double.infinity,
  child:   MaterialButton(onPressed: (){},
  
            shape: RoundedRectangleBorder(
  
            borderRadius: BorderRadius.circular(10)),
  
            color: Colors.blue,
  
            child: const Padding(
  
            padding: EdgeInsets.symmetric(vertical: 10),
  
              child: Text("Set up",
  
              style: TextStyle(
  
                color: Colors.white,
  
                fontSize: 20,
  
                fontWeight: FontWeight.bold
  
                ),),
  
            ),
  
            ),
),
const SizedBox(height: 10,),
          MaterialButton(onPressed: (){},
           shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("See what you can download",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),),
          ),
          )
      ],
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
         Icon(Icons.settings,
        color: Colors.white ,
        ),
        Text("Smart Downloads")
      ],
    );
  }
}

class DownloadsImageWisget extends StatelessWidget {
  const DownloadsImageWisget({
    super.key,
    required this.margin,
    required this.imageList,
    this.angle = 0,
   required this.size,
  });
  final String imageList;
   final double angle;
   final EdgeInsets margin;
   final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi/180,
        child: Container(
          
          width: size.width,
          height: size.height,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10), 
            image: DecorationImage(image: NetworkImage(imageList),fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}