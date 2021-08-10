import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opensphereweb/views/core_widgets/bottom_bar/contact_box.dart';
import 'package:opensphereweb/views/core_widgets/bottom_bar/get_in_touch.dart';
import 'package:opensphereweb/views/core_widgets/centered_view/centered_view.dart';

class BottomBarDesktop extends StatelessWidget {
  const BottomBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30, top: 50),
              color: Theme.of(context).bottomAppBarColor,
              child: CenteredView(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        GetInTouch(),
                        Spacer(),
                        //ContactColumn()
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Copyright © 2021 | OpenSphere Software',
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        const ContactBox()
      ],
    );
  }
}
