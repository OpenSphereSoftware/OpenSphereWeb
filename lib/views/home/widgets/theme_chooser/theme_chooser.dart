import 'package:flutter/material.dart';
import 'package:opensphereweb/views/home/widgets/theme_chooser/theme_chooser_desktop.dart';
import 'package:opensphereweb/views/home/widgets/theme_chooser/theme_chooser_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ThemeChooser extends StatelessWidget {
  const ThemeChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ThemeChooserMobile(),
      tablet: const ThemeChooserDesktopTablet(),
      desktop: const ThemeChooserDesktopTablet(),
    );
  }
}
