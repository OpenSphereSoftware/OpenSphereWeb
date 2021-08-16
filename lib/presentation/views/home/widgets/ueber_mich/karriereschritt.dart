import 'package:flutter/material.dart';

class Karriereschritt extends StatelessWidget {
  final String title;
  final String text;
  const Karriereschritt({Key? key, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
      final themeData = Theme.of(context);
    return Column(
      children: [
        Text(
          title,
          style: themeData.textTheme.bodyText1!.copyWith(
            height: 0.9,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
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
    );
  }
}
