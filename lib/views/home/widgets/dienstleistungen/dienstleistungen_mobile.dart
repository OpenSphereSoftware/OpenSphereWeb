import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/call_to_action/call_to_action.dart';
import 'package:opensphereweb/views/core_widgets/centered_view/centered_view.dart';

import 'package:opensphereweb/views/home/widgets/dienstleistungen/dienstleistung_beschreibung.dart';
import 'package:opensphereweb/views/home/widgets/dienstleistungen/dienstleistung_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DienstleistungenMobile extends StatelessWidget {
  final ScrollController screenScrollController;
  const DienstleistungenMobile({Key? key, required this.screenScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CenteredView(
            child: DienstleistungBeschreibung(
              title: 'Dienstleistungen',
              subtitle: 'Maßgeschneiderte Software für Ihren Erfolg',
              text:
                  'OpenSphere Software unterstützt Sie mit einem breit gefächertem Wissen, egal an welchem Punkt Sie mit Ihrem Projekt stehen. In enger Zusammenarbeit finden wir heraus, wie wir bestehende Prozesse optimieren, oder Ihre Vision von Grund auf zum Leben erwecken. Von firmeneigenen internen Softwarelösungen zur Prozessoptimierung, bis hin zu massentauglichen state-of-the-art Mobile Apps, bieten wir das ganze Spektrum von Konzepterstellung, bis hin zur Produktreife.',
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ExpandablePageView(
              controller: PageController(viewportFraction: 0.95),
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: DienstleistungMobile(
                    imgPath: "assets/development.jpeg",
                    title: 'DEVELOPMENT',
                    subtitle: "Umsetzung Ihrer Vision",
                    text:
                        "Wir sind Spezialisten für die Entwicklung von state-of-the-art Cross Plattform Mobile Applications mit dem Flutter Framework. Zusammen erarbeiten wir ein lückenloses Konzept und Design, das zur bestmöglichen User Experience führt. Durch die Verwendung des Flutter Frameworks sparen wir Ihnen wertvolle Entwicklungszeit, da wir mit einer Codebasis für Android und iOS zugleich entwickeln. Ob Tablet oder Smartphone, ob Software für Techniker oder für Endkunden, wir entwickeln maßgeschneiderte Lösungen für Ihre Bedürfnisse. Dabei legen wir Wert auf eine skalierbare Softwarearchitektur und eine saubere Implementierung.",
                  ),
                ),
                DienstleistungMobile(
                  imgPath: "assets/consulting.jpeg",
                  title: 'CONSULTANCY',
                  subtitle: 'Eine klare Ausrichtung',
                  text:
                      'Wir unterstützen Ihr Entwicklerteam gerne bei der Umsetzung Ihrer Ideen. Wir bieten eine lückenlose Konzept-, sowie Backlogerstellung, welche als Fundament und klare Ausrichtung für Ihr Projekt fungiert. Von einer Einführung in das Flutter Framework, das Erstellen einer stabilen Architektur, bis hin zur Designerstellung und Implementierung der Software, bieten wir alles, um Ihr Projekt zum Erfolg zu führen.',
                ),
              ]),
          const SizedBox(
            height: 80,
          ),
          CenteredView(
            child: Text(
              "Lassen Sie uns gemeinsam an der Umsetzung Ihrer Vision arbeiten!",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontStyle: FontStyle.italic,
                    height: 1.7,
                    fontSize: 18,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CenteredView(
            child: CallToAction(
              title: 'GET IN TOUCH',
              callback: () {
                // todo implement in bloc/prvider state management
                screenScrollController.animateTo(
                    screenScrollController.position.maxScrollExtent,
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease);
              },
            ),
          )
        ],
      );
    });
  }
}
