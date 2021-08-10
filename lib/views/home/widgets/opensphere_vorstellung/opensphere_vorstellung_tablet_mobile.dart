import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/call_to_action/call_to_action.dart';
import 'package:opensphereweb/views/core_widgets/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenSphereVorstellungMobileTablet extends StatelessWidget {
  const OpenSphereVorstellungMobileTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      const textAlignment = TextAlign.center;
      final double titleSize = sizingInformation.isMobile ? 40 : 50;
      final double descriptionSize = sizingInformation.isMobile ? 18 : 18;

      final themeData = Theme.of(context);
      final screenSize = MediaQuery.of(context).size;

      return Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 500,
                width: screenSize.width,
                child: Image.asset(
                  'assets/sphere.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 500,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CenteredView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 150, bottom: 50),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Flutter App\nDevelopment',
                            style: themeData.textTheme.headline1!.copyWith(
                                fontWeight: FontWeight.w800,
                                height: 1.1,
                                fontSize: titleSize,
                                color: Colors.white),
                            textAlign: textAlignment,
                          ),
                          const Spacer(),
                          Text(
                            'Mobile Applications from concept to pruduct matury',
                            style: themeData.textTheme.headline1!.copyWith(
                                fontSize: descriptionSize,
                                height: 1.7,
                                color: Colors.white),
                            textAlign: textAlignment,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          CenteredView(
            child: SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'This Website is build\nusing the Flutter Framework!',
                    style: themeData.textTheme.headline1!.copyWith(
                        fontSize: descriptionSize,
                        height: 1.7,
                        fontStyle: FontStyle.italic,
                       ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
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
              ),
            ),
          )
        ],
      );
    });
  }
}
