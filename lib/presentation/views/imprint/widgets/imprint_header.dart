import 'package:flutter/material.dart';
import 'package:opensphereweb/presentation/views/core/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ImprintHeader extends StatelessWidget {
  const ImprintHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textAlignment = TextAlign.left;

    final themeData = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Stack(
        children: [
          SizedBox(
            height: 500,
            width: screenSize.width,
            child: Image.asset(
              'assets/sphere2.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: CenteredView(
              child: Align(
                alignment: sizingInformation.isDesktop
                    ? Alignment.bottomLeft
                    : Alignment.bottomCenter,
                child: Text(
                  'Impressum',
                  style: themeData.textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                      fontSize: sizingInformation.isDesktop ? 60 : 35,
                      color: Colors.white),
                  textAlign: textAlignment,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
