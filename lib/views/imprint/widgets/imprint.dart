import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Imprint extends StatelessWidget {
  const Imprint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return CenteredView(
      child: ResponsiveBuilder(builder: (context, sizingInformation) {
        final textAlign =
            sizingInformation.isDesktop ? TextAlign.start : TextAlign.center;
        final double headingSize = sizingInformation.isDesktop ? 35 : 25;
        final double textSize = sizingInformation.isDesktop ? 16 : 14;
        return Column(
          crossAxisAlignment: sizingInformation.isDesktop
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            Text(
              "Angaben gemäß § 5 TMG",
              style: themeData.textTheme.headline1!.copyWith(
                fontWeight: FontWeight.w600,
                height: 1,
                fontSize: headingSize,
              ),
              textAlign: textAlign,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Max Berktold\nOpenSphere Software\nStiberstraße 13\n96114 Hirschaid",
              style: themeData.textTheme.bodyText2!.copyWith(
                fontSize: textSize,
                height: 1.7,
              ),
              textAlign: textAlign,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Kontakt",
              style: themeData.textTheme.headline1!.copyWith(
                fontWeight: FontWeight.w600,
                height: 1,
                fontSize: headingSize,
              ),
              textAlign: textAlign,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Telefon: 0176 420 134 86\nEmail: max.berktold@opensphere.software",
              style: themeData.textTheme.bodyText2!.copyWith(
                fontSize: textSize,
                height: 1.7,
              ),
              textAlign: textAlign,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Umsatzsteuer-ID",
              style: themeData.textTheme.headline1!.copyWith(
                fontWeight: FontWeight.w600,
                height: 1,
                fontSize: headingSize,
              ),
              textAlign: textAlign,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Umsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz: 96 575 248 109",
              style: themeData.textTheme.bodyText2!.copyWith(
                fontSize: textSize,
                height: 1.7,
              ),
              textAlign: textAlign,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Verbraucherstreitbeilegung",
              style: themeData.textTheme.headline1!.copyWith(
                fontWeight: FontWeight.w600,
                height: 1,
                fontSize: headingSize,
              ),
              textAlign: textAlign,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Wir sind nicht bereit oder verpflichtet, an Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle teilzunehmen.",
              style: themeData.textTheme.bodyText2!.copyWith(
                fontSize: textSize,
                height: 1.7,
              ),
              textAlign: textAlign,
            ),
          ],
        );
      }),
    );
  }
}
