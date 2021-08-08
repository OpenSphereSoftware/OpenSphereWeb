

import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/call_to_action/call_to_action.dart';
import 'package:opensphereweb/views/home/widgets/opensphere_vorstellung/opensphere_vorstellung.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OpenSphereVorstellung(),
        SizedBox(height: 100,),
        CallToAction(
                    title: 'Check on Git',
                    callback: () {
                      launch(
                          'https://github.com/OpenSphereSoftware/OpenSphereWeb');
                    },
                  ),

        Container(color: Colors.red, height:  500,),

        Container(color: Colors.yellow, height:  500,),

      ],
    );
  }
}