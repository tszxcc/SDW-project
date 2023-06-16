import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_vaccination/vaccine_appointment/components/body.dart';

class VaccineAppointmentScreen extends StatefulWidget {
  const VaccineAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<VaccineAppointmentScreen> createState() =>
      _VaccineAppointmentScreenState();
}

class _VaccineAppointmentScreenState extends State<VaccineAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Vaccine Appointment",
      ),
      body: Body(),
    );
  }
}
