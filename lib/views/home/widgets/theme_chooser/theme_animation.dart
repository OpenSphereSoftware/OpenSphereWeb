import 'package:flutter/material.dart';
import 'package:opensphereweb/app_state.dart';
import 'package:provider/provider.dart';

class ThemeAnimated extends StatefulWidget {
  const ThemeAnimated({Key? key}) : super(key: key);

  @override
  State<ThemeAnimated> createState() => _ThemeAnimatedState();
}

class _ThemeAnimatedState extends State<ThemeAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<AppState>(context);
    if (themeProvider.isDarkModeOn) {
      _animationController.forward(from: 0.0);
    } else {
      _animationController.reverse(from: 1.0);
    }

    return Stack(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: themeProvider.isDarkModeOn
                    ? const [Color(0xFF8983F7), Color(0xFFA3DAFB)]
                    : const [Color(0xDDFF0080), Color(0xDDFF8C00)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
        ),
        Transform.translate(
          offset: const Offset(40, 0),
          child: ScaleTransition(
            scale: _animationController.drive(
              Tween<double>(begin: 0.0, end: 1.0).chain(
                CurveTween(curve: Curves.decelerate),
              ),
            ),
            alignment: Alignment.topRight,
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).scaffoldBackgroundColor),
            ),
          ),
        )
      ],
    );
  }
}
