import 'package:flutter/material.dart';
import 'package:opensphereweb/presentation/views/core/call_to_action/call_to_action_mobile.dart';
import 'package:opensphereweb/presentation/views/core/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  final String title;
  final Function callback;
  const CallToAction({required this.title, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: CallToActionMobile(title: title, callback: callback,),
        desktop: CallToActionTabletDesktop(title: title, callback: callback),
        tablet: CallToActionTabletDesktop(title: title, callback: callback));
  }
}
