import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //!! colors here

  static Color _iconColor = Colors.blueAccent.shade200;

  static Color _lightPrimaryColor =Colors.blueGrey.shade50; // Color(0xFFfbfbfb)
  static Color _lightPrimaryVariantColor =Colors.blueGrey.shade800; //Color(0xFF4f5b62);
  static Color _lightOnPrimaryColor =Colors.blueGrey.shade200; // Color(0xFFbabdbe);
  static  Color _lightTextColorPrimary = Colors.black;
  static  Color _lightTextColorSecondary = Colors.blueGrey.shade900;

  static  Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static  Color _darkPrimaryVariantColor = Colors.black;
  static  Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static  Color _darkTextColorPrimary = Colors.white;
  static  Color _darkTextColorSecondary = Colors.blueGrey.shade200;

  static  Color _appbarColorLight = Colors.blueGrey.shade900;
  static Color _appbarColorDark = Colors.blueGrey.shade800; //Color(0xFF4f5b62);

  // ignore: unused_field
  static  Color _accentColorLight = Color.fromRGBO(107, 234, 236, 1);
  static  Color _accentColorDark = Color.fromRGBO(74, 217, 217, 1);

  //! light Theme here #################

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appbarColorLight,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryVariant: _lightPrimaryVariantColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _accentColorDark,
    ),
    iconTheme: IconThemeData(
      color: _iconColor,
    ),
    bottomAppBarColor: _appbarColorLight,
    textTheme: _lightTextTheme,
  );

//! dark Theme here ########################

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appbarColorDark,
      iconTheme: IconThemeData(color: _darkOnPrimaryColor),
    ),
    colorScheme: ColorScheme.light(
      primary: _darkPrimaryColor,
      primaryVariant: _darkPrimaryVariantColor,
      onPrimary: _darkOnPrimaryColor,
      secondary: _accentColorDark,
    ),
    bottomAppBarColor: _appbarColorDark,
    iconTheme: IconThemeData(
      color: _iconColor,
    ),
    textTheme: _darkTextTheme,
  );

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeadingTextStyle,
    bodyText1: _lightScreenTaskNameTextStyle,
    bodyText2: _lightScreenTaskDurationTextStyle,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkScreenHeadingTextStyle,
    bodyText1: _darkScreenTaskNameTextStyle,
    bodyText2: _darkScreenTaskDurationTextStyle,
  );

  static final TextStyle _lightScreenHeadingTextStyle =
      TextStyle(color: _lightTextColorPrimary, fontFamily: "Open Sans");
  static final TextStyle _lightScreenTaskNameTextStyle =
      TextStyle(color: _lightTextColorPrimary, fontFamily: "Open Sans");
  static final TextStyle _lightScreenTaskDurationTextStyle =
      TextStyle(color: _lightTextColorSecondary, fontFamily: "Open Sans");

  static final TextStyle _darkScreenHeadingTextStyle =
      _lightScreenHeadingTextStyle.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkScreenTaskNameTextStyle =
      _lightScreenTaskNameTextStyle.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkScreenTaskDurationTextStyle =
      _lightScreenTaskDurationTextStyle.copyWith(
          color: _darkTextColorSecondary);
}
