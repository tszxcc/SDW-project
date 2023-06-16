import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_notification/add_notification/components/body.dart';

class StaffAddNotificationScreen extends StatefulWidget {
  const StaffAddNotificationScreen({Key? key}) : super(key: key);

  @override
  State<StaffAddNotificationScreen> createState() =>
      _StaffAddNotificationScreenState();
}

class _StaffAddNotificationScreenState
    extends State<StaffAddNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Add Notification",
      ),
      body: Body(),
    );
  }
}
