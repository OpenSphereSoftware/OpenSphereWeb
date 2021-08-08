import 'package:flutter/material.dart';
import 'package:opensphereweb/main.dart';
import 'package:opensphereweb/views/layout_template/layout_template.dart';

import 'navbar_logo.dart';

class NavigaitonBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavigaitonBarMobile({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                  
                },
                icon: Icon(Icons.menu)),
            NavBarLogo()
          ],
        ),
      ),
    );
  }
}
