import 'package:flutter/material.dart';
import 'package:opensphereweb/application/navigation/navigation_service.dart';
import 'package:opensphereweb/locator.dart';
import 'package:opensphereweb/presentation/routing/route_names.dart';
import 'package:opensphereweb/presentation/views/core/navigation_bar/navbar_item.dart';
import 'package:opensphereweb/presentation/views/core/navigation_bar/navbar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  final ScrollController screenScrollController;
  final double opacity;
  const NavBarTabletDesktop(
      {Key? key, required this.opacity, required this.screenScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Theme.of(context).appBarTheme.color!.withOpacity(opacity),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const NavBarLogo(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  NavBarItem(
                    title: "Kontakt",
              
                    callback: () => screenScrollController.animateTo(
                        screenScrollController.position.maxScrollExtent,
                        duration: const Duration(seconds: 1),
                        curve: Curves.ease),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  NavBarItem(
                    title: 'Impressum',
                 
                    callback: () => locator<NavigationService>().navigateTo(ImprintRoute),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
