import 'package:flutter/material.dart';

class DienstleistungImg extends StatelessWidget {
  final String imgPath;
  const DienstleistungImg({Key? key, required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 600),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            imgPath,
            fit: BoxFit.cover,
          )),
    );
  }
}
