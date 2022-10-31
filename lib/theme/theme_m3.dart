import 'package:flutter/material.dart';
import 'package:tswiri_widgets/colors/colors_m3.dart';

import '../colors/colors.dart';

///Sunbird Theme.
ThemeData tswiriTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: primary,
      onPrimary: onprimary,
      secondary: secondary,
      onSecondary: onsecondary,
      error: error,
      onError: onerror,
      background: backgroundM2,
      onBackground: onbackground,
      surface: surface,
      onSurface: onsurface,
      surfaceTint: surfaceTint),
  scaffoldBackgroundColor: background[700],

  // const ColorScheme(
  //   brightness: Brightness.light,
  //   primary: Color(0xFF9B4051),
  //   onPrimary: Color(0xFFFFFFFF),
  //   primaryContainer: Color(0xFFFFD9DD),
  //   onPrimaryContainer: Color(0xFF400012),
  //   secondary: Color(0xFFBB1800),
  //   onSecondary: Color(0xFFFFFFFF),
  //   secondaryContainer: Color(0xFFFFDAD3),
  //   onSecondaryContainer: Color(0xFF3F0300),
  //   tertiary: Color(0xFF006878),
  //   onTertiary: Color(0xFFFFFFFF),
  //   tertiaryContainer: Color(0xFFA8EDFF),
  //   onTertiaryContainer: Color(0xFF001F25),
  //   error: Color(0xFFBA1A1A),
  //   errorContainer: Color(0xFFFFDAD6),
  //   onError: Color(0xFFFFFFFF),
  //   onErrorContainer: Color(0xFF410002),
  //   background: Color(0xFFFFFBFF),
  //   onBackground: Color(0xFF201A1B),
  //   surface: Color(0xFFFFFBFF),
  //   onSurface: Color(0xFF201A1B),
  //   surfaceVariant: Color(0xFFF4DDDF),
  //   onSurfaceVariant: Color(0xFF524344),
  //   outline: Color(0xFF847374),
  //   onInverseSurface: Color(0xFFFBEEEE),
  //   inverseSurface: Color(0xFF362F2F),
  //   inversePrimary: Color(0xFFFFB2BB),
  //   shadow: Color(0xFF000000),
  //   surfaceTint: Color(0xFF9B4051),
  // ),

  iconTheme: const IconThemeData(
    color: secondary,
  ),

  // //ColorScheme.
  // colorScheme: ColorScheme.fromSwatch(
  //   primarySwatch: tswiriOrange,
  //   accentColor: backgroundM2[400],
  //   brightness: Brightness.dark,
  //   backgroundColor: Colors.black,
  // ),

  //AppBar Theme.
  appBarTheme: const AppBarTheme(
    color: primary,
    elevation: 25,
    // shadowColor: Colors.black,
  ),

  //BottomSheet Theme.
  bottomSheetTheme: const BottomSheetThemeData(
    elevation: 10,
  ),

  //Scaffold Background Color.
  // scaffoldBackgroundColor: backgroundM2[800],

  //Button Theme.
  buttonTheme: const ButtonThemeData(
      // buttonColor: tswiriOrange,
      ),

  //ElevatedButton Theme.
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: secondary,
      textStyle: const TextStyle(
        fontSize: 16,
      ),
    ),
  ),

  //Card Theme.
  cardTheme: CardTheme(
    // color: primary.withOpacity(0.5),
    surfaceTintColor: Colors.white,
    color: primary,
    elevation: 5,
    margin: const EdgeInsets.all(4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  ),

  //Container Theme

  //TextBox Theme.
  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateProperty.all(Colors.white),
    fillColor: MaterialStateProperty.all(secondary),
  ),

  //FloatingActionButton Theme.
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      // foregroundColor: Colors.white,
      // backgroundColor: tswiriOrange,
      ),

  //TabBar Theme.
  tabBarTheme: const TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: primary,
        width: 3.5,
      ),
    ),
    // overlayColor: MaterialStateProperty.all(tswiriOrange),
  ),

  //Text Theme.
  textTheme: const TextTheme(
      // //labelLarge.
      // labelLarge: TextStyle(
      //   fontSize: 20,
      // ),
      // //labelMedium.
      // labelMedium: TextStyle(
      //   fontSize: 17,
      // ),
      // //labelSmall.
      // labelSmall: TextStyle(
      //   fontSize: 15,
      // ),
      // //titleLarge.
      // titleLarge: TextStyle(
      //   fontSize: 22,
      //   color: onprimary,
      // ),
      // //titleMedium.
      // titleMedium: TextStyle(
      //   fontSize: 18,
      //   color: secondary,
      // ),
      // //titleSmall.
      // titleSmall: TextStyle(
      //   fontSize: 16,
      // ),
      // //bodyLarge.
      // bodyLarge: TextStyle(
      //   fontSize: 16,
      // ),
      // //headlineSmall.
      // headlineSmall: TextStyle(
      //   fontSize: 20,
      //   color: tswiriOrange,
      //   fontWeight: FontWeight.bold,
      // ),
      ),

  //TextSelection Theme.
  textSelectionTheme: const TextSelectionThemeData(
      // cursorColor: tswiriOrange,
      ),

  //InputDecoration Theme.
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
  ),

  //Chip Theme.
  chipTheme: const ChipThemeData(
    // backgroundColor: backgroundM2[300],
    selectedColor: tswiriOrange,
    shape: StadiumBorder(
      side: BorderSide(
          // color: tswiriOrange,
          ),
    ),
  ),
  navigationBarTheme: NavigationBarThemeData(
    height: 75,
    backgroundColor: primary[400],
    elevation: 5,
  ),

  expansionTileTheme: const ExpansionTileThemeData(
    iconColor: onprimary,
    collapsedIconColor: secondary,
  ),
);
