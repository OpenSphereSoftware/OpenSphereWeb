import 'package:flutter/material.dart';
import 'package:opensphereweb/presentation/views/core/centered_view/centered_view.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return CenteredView(
      child: Align(
        alignment: Alignment.topRight,
        child: Material(
          elevation: 25,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 70),
            child: Column(
              children: [
                Text("write us",
                    style: themeData.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 15,
                ),
                SelectableText(
                  "max.berktold@opensphere.software",
                  style: themeData.textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    height: 1.7,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "call us",
                  style: themeData.textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SelectableText(
                  "0176 420 134 86",
                  style: themeData.textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    height: 1.7,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("meet us",
                    style: themeData.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 15,
                ),
                SelectableText("Stiberstraße 13\n96114 Hirschaid, Deutschland",
                    style: themeData.textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                      height: 1.7,
                    ),
                    textAlign: TextAlign.center)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
