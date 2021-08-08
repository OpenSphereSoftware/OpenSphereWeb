import 'package:flutter/material.dart';

import 'package:opensphereweb/views/core_widgets/navigation_bar/navigation_bar.dart';
import 'package:opensphereweb/views/core_widgets/navigation_drawer/navigation_drawer.dart';

import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  LayoutTemplate({Key? key, required this.child}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          key: scaffoldKey,
          drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Column(
            children: <Widget>[
              NavigationBar(scaffoldKey: scaffoldKey),
              Expanded(child: child)
            ],
          ),
        );
      },
    );
  }
}
