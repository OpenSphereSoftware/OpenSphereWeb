import 'package:flutter/material.dart';
import 'package:opensphereweb/locator.dart';
import 'package:opensphereweb/presentation/routing/route_names.dart';
import 'package:opensphereweb/application/navigation/navigation_service.dart';

class NavigaitonBarMobile extends StatelessWidget {
  final double opacity;
  const NavigaitonBarMobile({Key? key, required this.opacity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          Theme.of(context).appBarTheme.color!.withOpacity(opacity),
      elevation: 0,
      centerTitle: true,
      title: GestureDetector(
        onTap: ()=> locator<NavigationService>().navigateTo(HomeRoute),
        child: Text(
          'OPENSPHERE',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 3,
              ),
        ),
      ),
    );
  }
}
