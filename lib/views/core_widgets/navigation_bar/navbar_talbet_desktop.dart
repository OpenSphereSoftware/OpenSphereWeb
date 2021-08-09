import 'package:flutter/material.dart';
import 'package:opensphereweb/routing/route_names.dart';
import 'package:opensphereweb/views/core_widgets/navigation_bar/navbar_item.dart';
import 'package:opensphereweb/views/core_widgets/navigation_bar/navbar_logo.dart';

class NavBarTabletDesktop extends StatefulWidget {
  final double opacity;

  const NavBarTabletDesktop(this.opacity);

  @override
  _NavBarTabletDesktopState createState() => _NavBarTabletDesktopState();
}

class _NavBarTabletDesktopState extends State<NavBarTabletDesktop> {
  final List<bool> _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color:
            Theme.of(context).appBarTheme.color!.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             const NavBarLogo(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                       const NavBarItem(
                          title: 'Kontakt',
                          navigationPath: ContactRoute,
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                       const  NavBarItem(
                          title: 'Impressum',
                          navigationPath: ImprintRoute,
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              /*Text(
                'OPENSPHERE',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
