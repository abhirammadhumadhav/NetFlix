import 'package:flutter/material.dart';
import 'package:netflix_project/presentation/downloads/screen_downloads.dart';
import 'package:netflix_project/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_project/presentation/home/screen_home.dart';
import 'package:netflix_project/presentation/main_page/widgets/botom_nav.dart';
import 'package:netflix_project/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_project/presentation/search/screen_search.dart';

import '../../core/colors/colors.dart';



class ScreenMainPge extends StatelessWidget {
   ScreenMainPge({super.key});
  final pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
     ScreenDownloads()

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexchangenotifier
        , builder: (context, int index, _){
          return pages[index];
        }),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}