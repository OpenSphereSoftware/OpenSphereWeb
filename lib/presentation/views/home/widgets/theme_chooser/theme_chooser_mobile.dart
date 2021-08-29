import 'package:flutter/material.dart';
import 'package:opensphereweb/application/theme/theme_service.dart';
import 'package:opensphereweb/presentation/views/core/centered_view/centered_view.dart';
import 'package:opensphereweb/presentation/views/home/widgets/theme_chooser/moon.dart';
import 'package:opensphereweb/presentation/views/home/widgets/theme_chooser/star.dart';
import 'package:opensphereweb/presentation/views/home/widgets/theme_chooser/sun.dart';
import 'package:opensphereweb/presentation/views/home/widgets/theme_chooser/theme_switch.dart';
import 'package:provider/provider.dart';

class ThemeChooserMobile extends StatelessWidget {
  const ThemeChooserMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    const Duration duration = Duration(milliseconds: 200);
    const double radius = 15;
    return Consumer<ThemeService>(builder: (context, themeServie, child) {
      return CenteredView(
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(radius),
          elevation: 20,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  gradient: LinearGradient(
                      colors: themeServie.isDarkModeOn
                          ? const [
                              Color(0xFF94A9FF),
                              Color(0xFF6B66CC),
                              Color(0xFF200F75),
                            ]
                          : const [
                              Color(0xDDFFFA66),
                              Color(0xDDFFA057),
                              Color(0xDD940B99)
                            ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
              child: Stack(
                children: [
                  Positioned(
                      top: 70,
                      right: 50,
                      child: AnimatedOpacity(
                          duration: duration,
                          opacity: themeServie.isDarkModeOn ? 1 : 0,
                          child: const Star())),
                  Positioned(
                      top: 150,
                      left: 60,
                      child: AnimatedOpacity(
                          duration: duration,
                          opacity: themeServie.isDarkModeOn ? 1 : 0,
                          child: const Star())),
                  Positioned(
                      top: 40,
                      left: 200,
                      child: AnimatedOpacity(
                          duration: duration,
                          opacity: themeServie.isDarkModeOn ? 1 : 0,
                          child: const Star())),
                  Positioned(
                      top: 50,
                      left: 50,
                      child: AnimatedOpacity(
                          duration: duration,
                          opacity: themeServie.isDarkModeOn ? 1 : 0,
                          child: const Star())),
                  Positioned(
                      top: 100,
                      right: 200,
                      child: AnimatedOpacity(
                          duration: duration,
                          opacity: themeServie.isDarkModeOn ? 1 : 0,
                          child: const Star())),
                  //

                  AnimatedPositioned(
                      duration: const Duration(milliseconds: 400),
                      top: themeServie.isDarkModeOn ? 100 : 130,
                      right: themeServie.isDarkModeOn ? 100 : -40,
                      child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: themeServie.isDarkModeOn ? 1 : 0,
                          child: const Moon())),
                  AnimatedPadding(
                    duration: duration,
                    padding: EdgeInsets.only(
                        top: themeServie.isDarkModeOn ? 110 : 50),
                    child: const Center(child: Sun()),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 225,
                      decoration: BoxDecoration(
                          color: themeServie.isDarkModeOn
                              ? themeData.appBarTheme.color
                              : themeData.colorScheme.primary,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(radius),
                              bottomRight: Radius.circular(radius))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            themeServie.isDarkModeOn
                                ? "Zu dunkel?"
                                : "Zu hell?",
                            style: themeData.textTheme.headline1!.copyWith(
                              fontWeight: FontWeight.w600,
                              height: 0.9,
                              fontSize: 21,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            themeServie.isDarkModeOn
                                ? "Lass die Sonne aufgehen"
                                : "Lass es Nacht werden",
                            style: themeData.textTheme.bodyText1!.copyWith(
                              height: 0.9,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const ThemeSwitcher()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
