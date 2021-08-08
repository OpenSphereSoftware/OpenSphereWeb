import 'package:flutter/material.dart';
import 'package:opensphereweb/views/home/widgets/centered_view/centered_view.dart';
import 'package:opensphereweb/views/home/widgets/ueber_mich/karriereschritt.dart';
import 'package:opensphereweb/views/home/widgets/ueber_mich/profilbild.dart';

class UeberMichDesktop extends StatelessWidget {
  const UeberMichDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return CenteredView(
      child: Container(
        constraints: BoxConstraints(maxWidth: 1000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Profilbild(),
            SizedBox(
              height: 70,
            ),
            Text(
              "Über mich",
              style: themeData.textTheme.headline1!.copyWith(
                fontWeight: FontWeight.bold,
                height: 0.9,
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Max Berktold  -  Inhaber OpenSphere Software",
              style: themeData.textTheme.bodyText1!.copyWith(
                height: 0.9,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Karriereschritt(
              title: "Siemens",
              text:
                  "Meine Karriere als Softwareentwickler begann bei Siemens. Dort habe ich auch den Associate Engineer in der Anwendungsentwicklung abgeschlossen und war anschließend mit zuständig für die Pflege, das Testen und die Weiterentwicklung einer thermodynamischen Simulationssoftware für die Kraftwerksauslegung",
            ),
            SizedBox(
              height: 50,
            ),
            Karriereschritt(
              title: "Leidenschaft Mobile Apps",
              text:
                  "Schon bald fand ich jedoch meine Leidenschaft im Entwickeln von Mobile Apps und machte mich damit nebenberuflich selbstständig. In einem kleinen Entwicklungsteam setzen wir unsere Ideen mit Begeisterung und Professionalität um.",
            ),
            SizedBox(
              height: 50,
            ),
            Karriereschritt(
                title: "Rocket Solution",
                text:
                    "Um mich weiter auf die Entwicklung von Mobile Apps zu spezialisieren und mein Wissen zu verbreitern und zu vertiefen, wechselte ich von Siemens zu Rocket Solution. Dort arbeitete ich als Leiter der Entwicklung von state-of-the-art Tablet Apps für das Monitoring und Controlling von automatisierten Hochregallagern und durfte das Projekt von Beginn an organisatorisch und technisch aufsetzen und aufbauen."),
            SizedBox(
              height: 50,
            ),
            Karriereschritt(
                title: "OpenSphere Software",
                text:
                    "Die Erfahrungen mit meiner nebenberuflichen Selbständigkeit und der Wunsch mein eigener Chef zu sein, führten schlussendlich zur Gründung von OpenSphere Software. Wir sind Spezialisten für die Entwicklung von Mobile Apps mit dem Flutter Framework und suchen spannende Projekte und Herausforderungen. Gerne unterstütze wir Sie bei der Umsetzung Ihrer Vision. Sollten wir Ihr Interesse geweckt haben, freuen wir uns auf Ihre Kontaktaufnahme!"),
          ],
        ),
      ),
    );
  }
}
