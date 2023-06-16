import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_covid_information/covid_information_details/components/body.dart';

class CovidInformationDetailsScreen extends StatefulWidget {
  const CovidInformationDetailsScreen({Key? key}) : super(key: key);

  @override
  State<CovidInformationDetailsScreen> createState() =>
      _CovidInformationDetailsScreenState();
}

class _CovidInformationDetailsScreenState
    extends State<CovidInformationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Covid Information Details",
      ),
      body: Body(),
    );
  }
}
