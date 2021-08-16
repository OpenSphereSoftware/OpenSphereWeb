import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoText({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Theme.of(context).textTheme.bodyText1!.color,
        ),
        
      ],
    );
  }
}
