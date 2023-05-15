import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_project/presentation/home/widget/background_card.dart';
import 'package:netflix_project/presentation/home/widget/number_card_title.dart';
import '../../core/constants.dart';
import '../widget/main_card_title.dart';
ValueNotifier scrollNotifier = ValueNotifier(true );
class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, value,_) {
          return NotificationListener<UserScrollNotification>(  
            onNotification: (notification){
              final ScrollDirection direction = notification.direction;
              if(direction == ScrollDirection.reverse){
                scrollNotifier.value = false;
              }else if(direction == ScrollDirection.forward){
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children:  const [
                    BackgroundCard(),
                    MainCardTitle(title: "Released in the past year",),
                    SizedBox(height: 10,),
                    MainCardTitle(title: "Trending Now",),
                    SizedBox(height: 10,),
                    NumberCardTitle(),
                    SizedBox(height: 10,),
                     MainCardTitle(title: "Tense Dramas",),
                     SizedBox(height: 10,),
                    MainCardTitle(title: "South indian cinema",),
                  ],
                ),
              scrollNotifier.value ==  true ? 
               AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                  width: double.infinity,
                  height: 90,
                  color: Colors.black.withOpacity(0.3),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.network("https://about.netflix.com/images/meta/netflix-symbol-black.png",
                          width: 70,
                          height: 60,
                          ),
                          const Spacer(),
        const Icon(Icons.cast,color: Colors.white,),
        kwidth,
        Container(
          color: const Color.fromARGB(255, 33, 166, 243),
          width: 30,
          height: 30,
        ),
        kwidth
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("TV Shows",style: TxtStyle,),
                          Text("Movies",style: TxtStyle,),
                          Text("Categories",style: TxtStyle,)
                        ],
                      )
                    ],
                  ),
                ):
                const SizedBox()
              ]
            ),
          );
        }
      ),
    );
  }

  
}







