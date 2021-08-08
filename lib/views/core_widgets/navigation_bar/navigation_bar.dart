import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_bar_mobile.dart';
import 'navigation_bar_tablet_desktop.dart';

class NavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavigationBar({ Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigaitonBarMobile(scaffoldKey:scaffoldKey), 
      tablet: NavigationBarTabletDesktop(), 
      desktop: NavigationBarTabletDesktop());
  }
}


