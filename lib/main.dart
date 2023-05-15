import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: backgroundcolor,
       fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
            ),bodyMedium: TextStyle(
              color: Colors.white
              ))
      ),
      home:  ScreenMainPge(),
    );
  }
}

