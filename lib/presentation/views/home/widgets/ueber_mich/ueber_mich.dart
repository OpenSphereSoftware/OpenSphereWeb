import 'package:flutter/material.dart';
import 'package:opensphereweb/presentation/views/home/widgets/ueber_mich/ueber_mich_desktop.dart';
import 'package:opensphereweb/presentation/views/home/widgets/ueber_mich/ueber_mich_mobile_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UeberMich extends StatelessWidget {
  const UeberMich({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const UeberMichMobileTablet(),
      tablet: const UeberMichMobileTablet(),
      desktop: const UeberMichDesktop(),
      
    );
  }
}