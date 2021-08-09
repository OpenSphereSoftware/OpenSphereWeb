import 'package:flutter/material.dart';

import 'navbar_logo.dart';

class NavigaitonBarMobile extends StatelessWidget {

  const NavigaitonBarMobile({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                 // scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu)),
            const NavBarLogo()
          ],
        ),
      ),
    );
  }
}
