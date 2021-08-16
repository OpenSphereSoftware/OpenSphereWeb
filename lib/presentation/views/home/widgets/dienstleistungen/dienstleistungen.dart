

import 'package:flutter/material.dart';
import 'package:opensphereweb/presentation/views/home/widgets/dienstleistungen/dienstleistungen_desktop.dart';
import 'package:opensphereweb/presentation/views/home/widgets/dienstleistungen/dienstleistungen_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Dienstleistungen extends StatelessWidget {
  final ScrollController screenScrollController;
  const Dienstleistungen({ Key? key, required this.screenScrollController }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile:  DienstleistungenMobile(screenScrollController: screenScrollController,),
      desktop: DienstleistungenDesktop(screenScrollController: screenScrollController,),
      tablet:  DienstleistungenMobile(screenScrollController: screenScrollController,),
      
    );
  }
}