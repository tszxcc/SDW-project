import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_covid_information/add_covid_information/components/body.dart';

class AddCovidInformationScreen extends StatefulWidget {
  const AddCovidInformationScreen({Key? key}) : super(key: key);

  @override
  State<AddCovidInformationScreen> createState() =>
      _AddCovidInformationScreenState();
}

class _AddCovidInformationScreenState extends State<AddCovidInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Covid-19 News",
        previous: false,
      ),
      body: Body(),
    );
  }
}
