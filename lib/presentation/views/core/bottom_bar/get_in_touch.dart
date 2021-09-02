import 'package:flutter/material.dart';
import 'package:opensphereweb/presentation/views/core/bottom_bar/social_item.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
   
      builder: (context, sizingInformation) {
        return Column(
          crossAxisAlignment: sizingInformation.isDesktop ? CrossAxisAlignment.start: CrossAxisAlignment.center,
          children: [
            Text(
              "GET IN TOUCH",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontFamily: "Open Sans",
                height: 0.9,
                fontSize: sizingInformation.isDesktop ? 45:35,
              ),
            ),
              SizedBox(
              height: sizingInformation.isDesktop ? 35: 20,
            ),
            Text(
              "Hey! we are looking forward\nto start a project with you!",
              style: TextStyle(
                fontFamily: "Open Sans",
                color: Colors.blueGrey[100],
                height: 1.2,
                fontSize: sizingInformation.isDesktop ? 18: 16,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'SOCIAL',
              style: TextStyle(
                fontFamily: "Open Sans",
                color: Colors.blueGrey[300],
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SocialItem(
                title: 'LinkedIn',
                urlString: 'https://www.linkedin.com/in/max-bertkold-5b742b20a/'),
            const SizedBox(height: 5),
            const SocialItem(
                title: 'Xing',
                urlString: 'https://www.xing.com/profile/Max_Berktold/cv'),
            const SizedBox(height: 5),
            const SocialItem(
                title: 'Udemy',
                urlString: 'https://www.udemy.com/course/dart-flutter-leicht-gemacht/?referralCode=5896E52EDB9608456452'),
          ],
        );
      }
    );
  }
}
