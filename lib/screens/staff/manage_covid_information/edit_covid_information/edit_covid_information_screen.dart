import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_covid_information/edit_covid_information/components/body.dart';

class EditCovidInformationScreen extends StatefulWidget {
  const EditCovidInformationScreen({Key? key}) : super(key: key);

  @override
  State<EditCovidInformationScreen> createState() =>
      _EditCovidInformationScreenState();
}

class _EditCovidInformationScreenState
    extends State<EditCovidInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Edit Covid Information",
      ),
      body: Body(),
    );
  }
}
