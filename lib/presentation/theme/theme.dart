import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //!! colors here

  static const Color _iconColor = Colors.white;

  static final Color _lightPrimaryColor =Colors.blueGrey.shade50; // Color(0xFFfbfbfb)
  static final Color _lightPrimaryVariantColor =Colors.blueGrey.shade800; //Color(0xFF4f5b62);
  static final Color _lightOnPrimaryColor =Colors.blueGrey.shade200; // Color(0xFFbabdbe);
  static  final Color _lightTextColorPrimary = Colors.black;
  static  final Color _lightTextColorSecondary = Colors.blueGrey.shade900;
  static const Color _lightSurfaceColor = Colors.white;

  static  final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static  final Color _darkPrimaryVariantColor = Colors.black;
  static  final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static  const Color _darkTextColorPrimary = Colors.white;
  static  final Color _darkTextColorSecondary = Colors.blueGrey.shade200;
  static final  Color _darkSurfaceColor = _darkOnPrimaryColor;

  static  final Color _appbarColorLight = Colors.blueGrey.shade900;
  static final Color _appbarColorDark = Colors.blueGrey.shade800; //Color(0xFF4f5b62);

  // ignore: unused_field
  static  const Color _accentColorLight = Color.fromRGBO(107, 234, 236, 1);
  static  const Color _accentColorDark = Color.fromRGBO(74, 217, 217, 1);

  //! light Theme here #################

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appbarColorLight,
      
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryVariant: _lightPrimaryVariantColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _accentColorDark,
      // ignore: avoid_redundant_argument_values
      surface: _lightSurfaceColor
    ),
    iconTheme: const IconThemeData(
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
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.light(
      primary: _darkPrimaryColor,
      primaryVariant: _darkPrimaryVariantColor,
      onPrimary: _darkOnPrimaryColor,
      secondary: _accentColorDark,
      surface: _darkSurfaceColor
    ),
    bottomAppBarColor: _appbarColorDark,
    iconTheme: const IconThemeData(
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
