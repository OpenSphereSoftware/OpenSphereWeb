import 'package:flutter/material.dart';
import 'package:opensphereweb/views/core_widgets/centered_view/centered_view.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: const [
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
                  style:
                      TextStyle(fontSize: 16, height: 1.7, color: Colors.black),
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
                  style:
                      TextStyle(fontSize: 16, height: 1.7, color: Colors.black),
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
                Text("Stiberstraße 13\n96114 Hirschaid, Deutschland",
                    style: TextStyle(
                        fontSize: 16, height: 1.7, color: Colors.black),
                    textAlign: TextAlign.center)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
