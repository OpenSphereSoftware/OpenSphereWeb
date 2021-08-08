import 'package:flutter/material.dart';

class Dienstleistung extends StatelessWidget {
  final String title;
  final String subtitle;
  final String text;
  const Dienstleistung(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
      constraints: BoxConstraints(minHeight: 600),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      //color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: themeData.textTheme.headline1!.copyWith(
              fontWeight: FontWeight.w600,
              height: 0.9,
              fontSize: 21,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
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
          SizedBox(
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
