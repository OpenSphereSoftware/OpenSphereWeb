import 'package:flutter/material.dart';

import 'package:opensphereweb/extensions/hover_extensions.dart';

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
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.lightBlue.shade400,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            title,
            style: themeData.textTheme.headline1!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    ).moveUpOnHover.showCurserOnHover;
  }
}
