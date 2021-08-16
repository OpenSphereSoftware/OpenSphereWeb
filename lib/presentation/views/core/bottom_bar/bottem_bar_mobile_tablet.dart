import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opensphereweb/presentation/views/core/bottom_bar/contact_column.dart';
import 'package:opensphereweb/presentation/views/core/bottom_bar/get_in_touch.dart';

class BottomBarMobileTablet extends StatelessWidget {
  const BottomBarMobileTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const GetInTouch(),
            const SizedBox(
              height: 20,
            ),
            const ContactColumn(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Copyright © 2021 | OpenSphere Software',
              style: TextStyle(
                color: Colors.blueGrey[300],
                fontFamily: "Open Sans",
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
