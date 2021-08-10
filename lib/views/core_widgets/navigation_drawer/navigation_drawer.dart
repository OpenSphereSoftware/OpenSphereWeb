import 'package:flutter/material.dart';
import 'package:opensphereweb/routing/route_names.dart';
import 'package:opensphereweb/services/navigation_service.dart';
import 'package:opensphereweb/views/core_widgets/navigation_drawer/navigation_drawer_footer.dart';

import '../../../locator.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  final ScrollController screenScrollController;
  const NavigationDrawer({Key? key, required this.screenScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: [
          const NavigationDrawerHeader(),
          const SizedBox(
            height: 80,
          ),
          InkWell(
            hoverColor: Colors.transparent,
            onHover: (_) {},
            onTap: () {
              screenScrollController.animateTo(
                  screenScrollController.position.maxScrollExtent,
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease);
              Navigator.pop(context);
            },
            child: Text(
              "Kontakt",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            hoverColor: Colors.transparent,
            onHover: (_) {},
            onTap: () {
               locator<NavigationService>().navigateTo(ImprintRoute);
             // Navigator.pop(context);
            },
            child: Text(
              "Impressum",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          const Spacer(),
          const NavigationDrawerFooter()
        ],
      ),
    );
  }
}
