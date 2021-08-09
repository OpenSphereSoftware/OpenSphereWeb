import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DienstleistungBeschreibung extends StatelessWidget {
  final String title;
  final String subtitle;
  final String text;
  const DienstleistungBeschreibung(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 1000),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: themeData.textTheme.headline1!.copyWith(
              fontWeight: FontWeight.w600,
              height: 0.9,
              fontSize: 35,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            subtitle,
            style: themeData.textTheme.bodyText1!.copyWith(
              height: 0.9,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            text,
            style: themeData.textTheme.bodyText2!.copyWith(
              fontSize: 16,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
