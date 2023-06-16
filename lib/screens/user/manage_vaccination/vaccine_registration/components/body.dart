import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mhcs/public_components/primary_button.dart';
import 'package:mhcs/public_components/input_decoration.dart';
import 'package:mhcs/screens/user/manage_vaccination/vaccine_appointment/vaccine_appointment_screen.dart';

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
              "Current Address",
              style: textStyleMedium(),
            ),
            TextField(
              decoration: textFieldInputDecoration(
                  "Current Address", "Kuantan, Pahang",
                  icon: const Icon(Icons.error)),
            ),
            Text("*Please provide a valid city",
                style: textStyleNormal(Colors.red)),
            Image.asset("assets/images/location.png", width: 300),
            Text(
              "Phone Number",
              style: textStyleMedium(),
            ),
            TextField(
              decoration: textFieldInputDecoration("Phone Number", "+60",
                  icon: const Icon(Icons.phone)),
            ),
            Text(
              "Any serious illness",
              style: textStyleMedium(),
            ),
            TextField(
              decoration: textFieldInputDecoration(
                "Choose your type",
                "type",
              ),
            ),
            Text(
              "Aggree to all informaation is true",
              style: textStyleNormal(Colors.red),
            ),
            PrimaryButton(
              title: "submit",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VaccineAppointmentScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
