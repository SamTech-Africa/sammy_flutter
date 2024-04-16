import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sammy_flutter/src/utils/theme/widget_themes/text_teme.dart';

class TAppTheme {
  // Make the constructor private



  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme
  );
}

//     primarySwatch: const MaterialColor(0xffffe200, <int, Color>{
//       50: Color(0x1affe200),
//       100: Color(0x33ffe200),
//       200: Color(0x4Dffe200),
//       300: Color(0x66ffe200),
//       400: Color(0x80ffe200),
//       500: Color(0xFFFFE200),
//       600: Color(0x99ffe200),
//       700: Color(0xB3ffe200),
//       800: Color(0xCCffe200),
//       900: Color(0xE6ffe200),
//     }),