import 'package:flutter/material.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:mhcs/screens/user/manage_quarantine/request_another_location/components/body.dart';

class RequestAnotherLocationScreen extends StatefulWidget {
  const RequestAnotherLocationScreen({Key? key}) : super(key: key);

  @override
  State<RequestAnotherLocationScreen> createState() =>
      _RequestAnotherLocationScreenState();
}

class _RequestAnotherLocationScreenState
    extends State<RequestAnotherLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultButton(
          "Submit",
          press: hopCheckIn,
        ),
      ),
      appBar: const ThemeAppBar(
        "Quarantine Record",
      ),
      body: const Body(),
    );
  }

  hopCheckIn() {
    ThemeSnackBar.showSnackBar(context, "Done Submit");
  }
}
