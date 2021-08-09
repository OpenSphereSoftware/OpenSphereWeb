import 'package:flutter/material.dart';

class ContactColumn extends StatelessWidget {
  const ContactColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CONTACT',
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
        Text(
          'Stiberstr. 13, 96114 Hirschaid, Deutschland',
          style: TextStyle(
            fontFamily: "Open Sans",
            color: Colors.blueGrey[100],
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'max.berktold@opensphere.software',
          style: TextStyle(
            fontFamily: "Open Sans",
            color: Colors.blueGrey[100],
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '0176 420 134 86',
          style: TextStyle(
            fontFamily: "Open Sans",
            color: Colors.blueGrey[100],
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
