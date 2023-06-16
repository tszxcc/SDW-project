import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_covid_information/list_covid_information/components/body.dart';

class ListCovidInformationScreen extends StatefulWidget {
  const ListCovidInformationScreen({Key? key}) : super(key: key);

  @override
  State<ListCovidInformationScreen> createState() =>
      _ListCovidInformationScreenState();
}

class _ListCovidInformationScreenState
    extends State<ListCovidInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "List Covid Information",
      ),
      body: Body(),
    );
  }
}
