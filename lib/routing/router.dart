import 'package:flutter/material.dart';
import 'package:opensphereweb/routing/route_names.dart';
import 'package:opensphereweb/views/home/home_view.dart';
import 'package:opensphereweb/views/imprint/imprint_view.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), HomeRoute);
    case ImprintRoute:
      return _getPageRoute(ImprintView(), ImprintRoute);
    default:
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.routeName, required this.child})
      : super(
        settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                child,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
