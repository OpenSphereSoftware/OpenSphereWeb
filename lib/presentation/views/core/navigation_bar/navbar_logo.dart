import 'package:flutter/material.dart';
import 'package:opensphereweb/locator.dart';
import 'package:opensphereweb/presentation/routing/route_names.dart';
import 'package:opensphereweb/application/navigation/navigation_service.dart';

// widget extension
// ignore: directives_ordering
import 'package:opensphereweb/presentation/extensions/on_hover/hover_extensions.dart';

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
