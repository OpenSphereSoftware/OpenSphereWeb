import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/call_to_action/call_to_action.dart';
import 'package:opensphereweb/views/core_widgets/centered_view/centered_view.dart';
import 'package:opensphereweb/views/home/widgets/dienstleistungen/dienstleistung.dart';
import 'package:opensphereweb/views/home/widgets/dienstleistungen/dienstleistung_beschreibung.dart';
import 'package:opensphereweb/views/home/widgets/dienstleistungen/dienstleistung_img.dart';

class DienstleistungenDesktop extends StatelessWidget {
  final ScrollController screenScrollController;
  const DienstleistungenDesktop(
      {Key? key, required this.screenScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const DienstleistungBeschreibung(
            title: 'Dienstleistungen',
            subtitle: 'Maßgeschneiderte Software für Ihren Erfolg',
            text:
                'OpenSphere Software unterstützt Sie mit einem breit gefächertem Wissen, egal an welchem Punkt Sie mit Ihrem Projekt stehen. In enger Zusammenarbeit finden wir heraus, wie wir bestehende Prozesse optimieren, oder Ihre Vision von Grund auf zum Leben erwecken. Von firmeneigenen internen Softwarelösungen zur Prozessoptimierung, bis hin zu massentauglichen state-of-the-art Mobile Apps, bieten wir das ganze Spektrum von Konzepterstellung, bis hin zur Produktreife.',
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: const [
              Expanded(
                  child: Dienstleistung(
                title: 'Software Consultancy',
                subtitle: 'Eine klare Ausrichtung',
                text:
                    'Wir unterstützen Ihr Entwicklerteam gerne bei der Umsetzung Ihrer Ideen. Wir bieten eine lückenlose Konzept-, sowie Backlogerstellung, welche als Fundament und klare Ausrichtung für Ihr Projekt fungiert. Von einer Einführung in das Flutter Framework, das Erstellen einer stabilen Architektur, bis hin zur Designerstellung und Implementierung der Software, bieten wir alles, um Ihr Projekt zum Erfolg zu führen.',
              )),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: DienstleistungImg(imgPath: 'assets/consulting.jpeg')),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: const [
              Expanded(
                  child: DienstleistungImg(imgPath: 'assets/development.jpeg')),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Dienstleistung(
                      title: "Software Development",
                      subtitle: "Umsetzung Ihrer Vision",
                      text:
                          "Wir sind Spezialisten für die Entwicklung von state-of-the-art Cross Plattform Mobile Applications mit dem Flutter Framework. Zusammen erarbeiten wir ein lückenloses Konzept und Design, das zur bestmöglichen User Experience führt. Durch die Verwendung des Flutter Frameworks sparen wir Ihnen wertvolle Entwicklungszeit, da wir mit einer Codebasis für Android und iOS zugleich entwickeln. Ob Tablet oder Smartphone, ob Software für Techniker oder für Endkunden, wir entwickeln maßgeschneiderte Lösungen für Ihre Bedürfnisse. Dabei legen wir Wert auf eine skalierbare Softwarearchitektur und eine saubere Implementierung.")),
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          Text(
            "Lassen Sie uns gemeinsam an der Umsetzung Ihrer Vision arbeiten!",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontStyle: FontStyle.italic,
                  height: 0.9,
                  fontSize: 18,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CallToAction(
            title: 'GET IN TOUCH',
            callback: () {
              // todo implement in bloc/prvider state management
              screenScrollController.animateTo(
                  screenScrollController.position.maxScrollExtent,
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease);
            },
          )
        ],
      ),
    );
  }
}
