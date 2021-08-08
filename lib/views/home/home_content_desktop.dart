import 'package:flutter/material.dart';
import 'package:opensphereweb/views/home/widgets/bottom_bar/bottom_bar.dart';
import 'package:opensphereweb/views/home/widgets/opensphere_vorstellung/opensphere_vorstellung.dart';
import 'package:opensphereweb/views/home/widgets/dienstleistungen/dienstleistungen_desktop.dart';
import 'package:opensphereweb/views/home/widgets/theme_chooser/theme_chooser_desktop.dart';
import 'package:opensphereweb/views/home/widgets/ueber_mich/ueber_mich_desktop.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        OpenSphereVorstellung(),

        SizedBox(height: 100,),

        ThemeChooserDesktop(),

        SizedBox(height: 200,),

        DienstleistungenDesktop(),

        SizedBox(height: 200,),

        UeberMichDesktop(),

        SizedBox(height: 250,),

        BottomBar()


      ],
    );
  }
}
