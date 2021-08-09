import 'package:flutter/material.dart';
import 'package:opensphereweb/locator.dart';
import 'package:opensphereweb/routing/route_names.dart';
import 'package:opensphereweb/services/navigation_service.dart';

import 'package:opensphereweb/extensions/hover_extensions.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      hoverColor: Colors.transparent,
      onHover: (_) {},
      onTap: () => locator<NavigationService>().navigateTo(HomeRoute),
      child: SizedBox(
        height: 40,
        child:  Image.asset('assets/logo_white.png'),
      ),
    ).showCurserOnHover.moveUpOnHover;
  }
}
