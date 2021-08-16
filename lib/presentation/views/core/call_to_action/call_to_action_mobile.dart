import 'package:flutter/material.dart';

import 'package:opensphereweb/presentation/extensions/on_hover/hover_extensions.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  final Function callback;
  const CallToActionMobile(
      {Key? key, required this.title, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (_) {},
      onTap: () => callback(),

      // todo navigate to contact
      /* scrollControllerHome.animateTo(
            scrollControllerHome.position.maxScrollExtent,
            duration: const Duration(
              milliseconds: 500,
            ),
            curve: Curves.ease);*/

      child: Material(
        elevation: 6,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: themeData.colorScheme.secondary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: themeData.textTheme.headline1!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: themeData.colorScheme.primaryVariant,
            ),
          ),
        ),
      ),
    ).moveUpOnHover.showCurserOnHover;
  }
}
