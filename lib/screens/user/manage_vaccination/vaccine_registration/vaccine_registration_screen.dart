import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_vaccination/vaccine_registration/components/body.dart';

class VaccineRegistrationScreen extends StatefulWidget {
  const VaccineRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<VaccineRegistrationScreen> createState() =>
      _VaccineRegistrationScreenState();
}

class _VaccineRegistrationScreenState extends State<VaccineRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Vaccine Registration",
      ),
      body: Body(),
    );
  }
}
