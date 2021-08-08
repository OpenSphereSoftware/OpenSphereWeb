import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opensphereweb/views/home/widgets/bottom_bar/contact_column.dart';
import 'package:opensphereweb/views/home/widgets/bottom_bar/get_in_touch.dart';
import 'package:opensphereweb/views/home/widgets/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return sizingInformation.isMobile
            ? Container(
                padding: EdgeInsets.only(bottom: 30, top: 50),
                color: Theme.of(context).bottomAppBarColor,
                child: Column(
                  children: [
                 GetInTouch(),
                    SizedBox(
                      height: 20,
                    ),
                    ContactColumn(),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Copyright © 2021 | OpenSphere Software',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontFamily: "Open Sans",
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              )
            : Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 30, top: 50),
                        color: Theme.of(context).bottomAppBarColor,
                        child: CenteredView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  GetInTouch(),
                                  Spacer(),
                                  //ContactColumn()
                                ],
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Text(
                                'Copyright © 2021 | OpenSphere Software',
                                style: TextStyle(
                                  fontFamily: "Open Sans",
                                  color: Colors.blueGrey[300],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  CenteredView(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Material(
                        elevation: 8,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 70, horizontal: 70),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "WRITE US",
                                style: TextStyle(
                                  fontFamily: "Open Sans",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "max.berktold@opensphere.software",
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.7,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "CALL US",
                                style: TextStyle(
                                  fontFamily: "Open Sans",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "0176 420 134 86",
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.7,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "LOCATION",
                                style: TextStyle(
                                  fontFamily: "Open Sans",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                  "Stiberstraße 13\n96114 Hirschaid, Deutschland",
                                  style: TextStyle(
                                      fontSize: 16,
                                      height: 1.7,
                                      color: Colors.black),
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
      },
    );
  }
}
