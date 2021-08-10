import 'package:flutter/material.dart';
import 'package:opensphereweb/views/home/widgets/opensphere_vorstellung/opensphere_vorstellung_desktop.dart';
import 'package:opensphereweb/views/home/widgets/opensphere_vorstellung/opensphere_vorstellung_tablet_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OpenSphereVorstellung extends StatelessWidget {
  const OpenSphereVorstellung({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(tablet: 600, desktop: 1050, watch: 300),
      mobile: const OpenSphereVorstellungMobileTablet(),
      tablet: const OpenSphereVorstellungMobileTablet(),
      desktop: const OpenSphereVorstellungDesktop(),
    );
  }
}
