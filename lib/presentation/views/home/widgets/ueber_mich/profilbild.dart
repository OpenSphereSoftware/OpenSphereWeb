import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Profilbild extends StatelessWidget {
  const Profilbild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(

      builder: (context, sizingInformation) {
        return CircleAvatar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          radius: sizingInformation.isDesktop? 200: 120,
          backgroundImage: const AssetImage("assets/profilbild.jpeg"),
        );
      }
    );
  }
}
