import 'package:flutter/material.dart';

import 'package:opensphereweb/application/navigation/navigation_service.dart';
import 'package:opensphereweb/locator.dart';
import 'package:opensphereweb/presentation/routing/route_names.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Theme.of(context).appBarTheme.color,
      alignment: Alignment.center,
      child: InkWell(
        onTap: () => locator<NavigationService>().navigateTo(HomeRoute),
        child: SizedBox(
          height: 60,
          child: Image.asset('assets/logo_white.png'),
        ),
      ),
    );
  }
}
