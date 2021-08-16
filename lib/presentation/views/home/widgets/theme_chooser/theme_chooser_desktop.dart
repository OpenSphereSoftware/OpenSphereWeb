import 'package:flutter/material.dart';
import 'package:opensphereweb/application/theme/theme_service.dart';
import 'package:opensphereweb/presentation/views/home/widgets/theme_chooser/theme_animation.dart';
import 'package:opensphereweb/presentation/views/home/widgets/theme_chooser/theme_switch.dart';
import 'package:provider/provider.dart';

class ThemeChooserDesktopTablet extends StatelessWidget {
  const ThemeChooserDesktopTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      elevation: 25,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Provider.of<ThemeService>(context).isDarkModeOn? Theme.of(context).appBarTheme.color :Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:  60, horizontal: 80),
          child: Column(
            children: [
              const ThemeAnimated(),
              const SizedBox(
                height: 40,
              ),
              Text(
                Provider.of<ThemeService>(context).isDarkModeOn
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
                Provider.of<ThemeService>(context).isDarkModeOn
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
    );
  }
}
