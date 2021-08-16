import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opensphereweb/presentation/views/core/bottom_bar/bottem_bar_mobile_tablet.dart';
import 'package:opensphereweb/presentation/views/core/bottom_bar/bottom_bar_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const BottomBarMobileTablet(),
      tablet: const BottomBarMobileTablet(),
      desktop: const BottomBarDesktop(),
    );
  }
}
