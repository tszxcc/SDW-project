import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_vaccination/vaccination_status/components/body.dart';

class VaccinationStatusScreen extends StatefulWidget {
  const VaccinationStatusScreen({Key? key}) : super(key: key);

  @override
  State<VaccinationStatusScreen> createState() => _VaccinationStatusScreenState();
}

class _VaccinationStatusScreenState extends State<VaccinationStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Vaccination Status",
      ),
      body: Body(),
    );
  }
}