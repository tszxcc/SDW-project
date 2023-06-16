import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_vaccination/vaccination_record/components/body.dart';
// import 'package:mhcs/screens/user/manage_vaccination/vaccination_record/vaccination_record_screen.dart';

class VaccinationRecordScreen extends StatefulWidget {
  const VaccinationRecordScreen({Key? key}) : super(key: key);

  @override
  State<VaccinationRecordScreen> createState() =>
      _VaccinationRecordScreenState();
}

class _VaccinationRecordScreenState extends State<VaccinationRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Vaccination Record",
      ),
      body: Body(),
    );
  }
}
