

import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/new_and_hot/widget/comming_soon.dart';
import 'package:netflix_project/presentation/new_and_hot/widget/everyones_watching_widget.dart';
import 'package:netflix_project/presentation/widget/video_widget.dart';
import '../../core/constants.dart';
import '../home/widget/custom.button.widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              kwidth,
              Container(
                color: const Color.fromARGB(255, 33, 166, 243),
                width: 30,
                height: 30,
              ),
              kwidth
            ],
            bottom: TabBar(
                unselectedLabelColor: kWhitecolor,
                isScrollable: true,
                labelColor: KBlackColor,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kWhitecolor, borderRadius: Kradius30),
                tabs: const [
                  Tab(
                    text: "🍿 Comming Soon",
                  ),
                  Tab(
                    text: "👀 Everyones Watching",
                  )
                ]),
          ),
        ),
        body: TabBarView(
            children: [TabBarCommingSoon(), TabBarEveryonesWatching()]),
      ),
    );
  }

  Widget TabBarCommingSoon() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        return const CommingSoonWidget();
      },
      itemCount: 10,
    );
  }

  Widget TabBarEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index){
      return EveryonesWatchingWidget();
    });
  }
}


