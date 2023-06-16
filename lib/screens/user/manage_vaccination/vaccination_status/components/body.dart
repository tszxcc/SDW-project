import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mhcs/public_components/primary_button.dart';
import 'package:mhcs/public_components/input_decoration.dart';
import 'package:mhcs/screens/user/manage_vaccination/vaccination_status/vaccination_status_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        //mainAxisAlignment: MainAxisAlignment.center,
        child: Column(
          children: [
            Text(
              "Name",
              style: textStyleMedium(),
            ),
            Text(
              "ARIF BIN DAUD",
              style: textStyleHeaderBold(),
            ),
            Text(
              "NRIC/Passport No.",
              style: textStyleMedium(),
            ),
            Text(
              "000608-12-1549",
              style: textStyleHeaderBold(),
            ),
            Text(
              "24-July - Registered",
              style: textStyleHeaderBold(),
            ),
            Text(
              "27-7 - Assestment",
              style: textStyleHeaderBold(),
            ),
            Text(
              "03-8 - Eligible for Vaccine?",
              style: textStyleHeaderBold(),
            ),
            Row(
              children: const [],
            )
          ],
        ),
      ),
    );
  }
}
