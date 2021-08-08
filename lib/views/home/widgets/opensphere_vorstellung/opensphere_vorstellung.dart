import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/call_to_action/call_to_action.dart';
import 'package:opensphereweb/views/home/widgets/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenSphereVorstellung extends StatelessWidget {
  const OpenSphereVorstellung({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.isDesktop ? TextAlign.left : TextAlign.center;
      double titleSize = sizingInformation.isMobile ? 35 : 60;
      double descriptionSize = sizingInformation.isMobile ? 16 : 21;

      final themeData = Theme.of(context);
      var screenSize = MediaQuery.of(context).size;

      return Stack(
        children: [
          Container(
            child: SizedBox(
              height: 700,
              width: screenSize.width,
              child: Image.asset(
                'assets/sphere.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: CenteredView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Flutter App Development',
                          style: themeData.textTheme.headline1!.copyWith(
                              fontWeight: FontWeight.w800,
                              height: 1.1,
                              fontSize: titleSize,
                              color: Colors.white),
                          textAlign: textAlignment,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Mobile Applications from concept to pruduct matury',
                          style: themeData.textTheme.headline1!.copyWith(
                              fontSize: descriptionSize,
                              height: 1.7,
                              color: Colors.white),
                          textAlign: textAlignment,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'This Website is build\nusing the Flutter Framework!',
                        style: themeData.textTheme.headline1!.copyWith(
                            fontSize: descriptionSize,
                            height: 1.7,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          height: 20,
                        ),
                      CallToAction(
                        title: 'Check our GitHub',
                        callback: () {
                          launch(
                              'https://github.com/OpenSphereSoftware/OpenSphereWeb');
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
