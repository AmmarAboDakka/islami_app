import 'package:flutter/material.dart';

class Mytheme{
  static Color goldcolor=const Color(0xFFB7935F);
  static ThemeData lihgttheme=ThemeData(


    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
          ),
      textTheme: const TextTheme(
      headline1:TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
          color: Colors.black
      ),
          headline2: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
          )
  ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      unselectedIconTheme: IconThemeData(color: Colors.white,size: 35),
      selectedIconTheme: IconThemeData(color: Colors.black,size: 35),
    )
  );
  static ThemeData darktheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,

      ),
      textTheme: const TextTheme(
          headline1:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        headline2: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
            color: Colors.black
        )

      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedIconTheme: IconThemeData(color: Colors.black),
      )

  );
}