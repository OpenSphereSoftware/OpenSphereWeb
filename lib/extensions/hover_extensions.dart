

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as  html;

import 'package:flutter/material.dart';
import 'package:opensphereweb/extensions/widgets/translate_on_hover.dart';

extension HoverExtensions on Widget {

  static final appContainer = html.window.document.getElementById('app_container');

  Widget get showCurserOnHover {
    return MouseRegion(
      child:  this,
      onHover: (event)=> appContainer!.style.cursor = "pointer",
      onExit: (event)=> appContainer!.style.cursor = "default",
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(child: this);
  }


}