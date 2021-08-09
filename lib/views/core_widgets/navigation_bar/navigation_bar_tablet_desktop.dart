import 'package:flutter/material.dart';
import 'package:opensphereweb/routing/route_names.dart';
import 'package:opensphereweb/views/core_widgets/navigation_bar/navbar_logo.dart';

import 'navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                NavBarItem(
                  title: 'Kontakt',
                  navigationPath: ContactRoute,
                ),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(
                  title: 'Impressum',
                  navigationPath: ImprintRoute,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
