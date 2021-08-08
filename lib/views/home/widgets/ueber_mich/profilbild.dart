import 'package:flutter/material.dart';

class Profilbild extends StatelessWidget {
  const Profilbild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      radius: 200,
      backgroundImage: AssetImage("assets/profilbild.jpeg"),
    );
  }
}
