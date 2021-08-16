import 'package:flutter/material.dart';
import 'package:opensphereweb/application/theme/theme_service.dart';
import 'package:provider/provider.dart';

class DienstleistungMobile extends StatelessWidget {
  final String imgPath;
  final String subtitle;
  final String title;
  final String text;
  const DienstleistungMobile(
      {Key? key,
      required this.imgPath,
      required this.subtitle,
      required this.title,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 60, top: 20),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        elevation: 25,
        child: Container(
            width: screenSize.width - 80,
            // width: sizingInformation.width - 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Provider.of<ThemeService>(context).isDarkModeOn
                  ? themeData.appBarTheme.color
                  : Colors.white,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      
                     constraints: const BoxConstraints(minWidth: double.infinity),
                      height: 250,
                      /*decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent),*/
                      child: ClipRRect(
                        
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        child: Image.asset(
                          imgPath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            title,
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      letterSpacing: 8,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Provider.of<ThemeService>(context).isDarkModeOn
                          ? themeData.appBarTheme.color
                          : Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Text(
                          subtitle,
                          style: themeData.textTheme.bodyText1!.copyWith(
                            height: 0.9,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          text,
                          style: themeData.textTheme.bodyText2!.copyWith(
                            fontSize: 15,
                            height: 1.7,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
