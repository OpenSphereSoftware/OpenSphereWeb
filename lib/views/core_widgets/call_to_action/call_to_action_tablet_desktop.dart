import 'package:flutter/material.dart';
import 'package:opensphereweb/extensions/hover_extensions.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  final Function callback;
  const CallToActionTabletDesktop(
      {Key? key, required this.title, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (_) {},
      onTap: () => callback(),
      child: Material(
        elevation: 6,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Text(
            title,
            style: themeData.textTheme.headline1!.copyWith(
              fontSize: 18,
              color: themeData.colorScheme.primaryVariant,
              fontWeight: FontWeight.w800,
            ),
          ),
          decoration: BoxDecoration(
            color: themeData.colorScheme.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ).showCurserOnHover.moveUpOnHover;
  }
}
