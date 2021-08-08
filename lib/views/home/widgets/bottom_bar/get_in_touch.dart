import 'package:flutter/material.dart';
import 'package:opensphereweb/views/home/widgets/bottom_bar/social_item.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "GET IN TOUCH",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.bold,
            fontFamily: "Open Sans",
            height: 0.9,
            fontSize: 45,
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Text(
          "Hey! we are looking forward\nto start a project with you!",
          style: TextStyle(
            fontFamily: "Open Sans",
            color: Colors.blueGrey[100],
            height: 1.2,
            fontSize: 18,
          ),
        ),
        SizedBox(
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
        SizedBox(
          height: 10,
        ),
        SocialItem(
            title: 'LinkedIn',
            urlString: 'https://www.linkedin.com/in/max-bertkold-5b742b20a/'),
        SizedBox(height: 5),
        SocialItem(
            title: 'Xing',
            urlString: 'https://www.xing.com/profile/Max_Berktold/cv'),
        SizedBox(height: 5),
        SocialItem(
            title: 'Udemy',
            urlString: 'https://www.udemy.com/user/max-berktold-2/'),
      ],
    );
  }
}