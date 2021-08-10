import 'package:flutter/material.dart';

class NavigationDrawerFooter extends StatelessWidget {
  const NavigationDrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Theme.of(context).appBarTheme.color,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
                "We would love to work with you!",
                style: TextStyle(
                  fontFamily: "Open Sans",
                  color: Colors.blueGrey[100],
                  height: 1.2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  
                ),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}