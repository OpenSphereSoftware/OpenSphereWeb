

import 'package:flutter/material.dart';
import 'package:opensphereweb/locator.dart';
import 'package:opensphereweb/services/navigation_service.dart';
//extension
import 'package:opensphereweb/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem({required this.title,required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (_){},
      
      onTap: (){
        //! normally never use a service directly in the ui    but currently no state management is set up
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ).showCurserOnHover.moveUpOnHover;
  }
}