import 'package:flutter/material.dart';
import 'package:opensphereweb/routing/route_names.dart';

import 'drawer_item.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration:const  BoxDecoration(
          color: Colors.white,
          boxShadow:  [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: const [
          NavigationDrawerHeader(),
          DrawerItem(icon: Icons.videocam, title: "episodes", navigationPath: ContactRoute,),
          DrawerItem(icon: Icons.help, title: "about", navigationPath: ImprintRoute,)
        ],
      ),
    );
  }
}
