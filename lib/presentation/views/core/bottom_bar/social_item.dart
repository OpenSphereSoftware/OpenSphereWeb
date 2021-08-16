import 'package:flutter/material.dart';
import 'package:opensphereweb/presentation/extensions/on_hover/hover_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialItem extends StatelessWidget {
  final String title;
  final String urlString;
  const SocialItem({required this.title, required this.urlString});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (_) {},
      onTap: () {
        launch(urlString);
      },
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "Open Sans",
          color: Colors.blueGrey[100],
          fontSize: 16,
        ),
      ),
    ).showCurserOnHover.moveUpOnHover;
  }
}
