import 'package:flutter/material.dart';
import 'package:opensphereweb/app_state.dart';
import 'package:opensphereweb/views/home/widgets/theme_chooser/theme_animation.dart';
import 'package:opensphereweb/views/home/widgets/theme_chooser/theme_switch.dart';
import 'package:provider/provider.dart';

class ThemeChooserDesktop extends StatelessWidget {
  const ThemeChooserDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      children: [
        const ThemeAnimated(),
        const SizedBox(
          height: 40,
        ),
        Text(
          Provider.of<AppState>(context).isDarkModeOn
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
          Provider.of<AppState>(context).isDarkModeOn
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
    );
  }
}
