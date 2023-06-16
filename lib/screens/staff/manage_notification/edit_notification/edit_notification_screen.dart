import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_notification/edit_notification/components/body.dart';

class StaffEditNotificationScreen extends StatefulWidget {
  const StaffEditNotificationScreen({Key? key}) : super(key: key);

  @override
  State<StaffEditNotificationScreen> createState() =>
      _StaffEditNotificationScreenState();
}

class _StaffEditNotificationScreenState
    extends State<StaffEditNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Notification Messages",
      ),
      body: Body(),
    );
  }
}
