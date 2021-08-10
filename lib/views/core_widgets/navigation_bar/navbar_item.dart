import 'package:flutter/material.dart';
//extension
import 'package:opensphereweb/extensions/hover_extensions.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final Function callback;
   const NavBarItem(
      {required this.title,
      required this.callback});

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          value ? _isHovering = true : _isHovering = false;
        });
      },
      onTap: () {
        widget.callback();
        //! normally not navigate in ui layer  but since no state management is set up  its ok..
        //locator<NavigationService>().navigateTo(widget.navigationPath);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isHovering,
            child: Container(
              height: 2,
              width: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    ).showCurserOnHover.moveUpOnHover;
  }
}
