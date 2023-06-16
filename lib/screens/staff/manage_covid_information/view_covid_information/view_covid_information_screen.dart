import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_covid_information/view_covid_information/components/body.dart';

class ViewCovidInformationScreen extends StatefulWidget {
  const ViewCovidInformationScreen({Key? key}) : super(key: key);

  @override
  State<ViewCovidInformationScreen> createState() =>
      _ViewCovidInformationScreenState();
}

class _ViewCovidInformationScreenState
    extends State<ViewCovidInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "View Covid Information",
      ),
      body: Body(),
    );
  }
}
