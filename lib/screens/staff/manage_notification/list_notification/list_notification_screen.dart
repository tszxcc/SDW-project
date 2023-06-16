import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_notification/add_notification/add_notification_screen.dart';
import 'package:mhcs/screens/staff/manage_notification/list_notification/components/body.dart';

class StaffListNotificationScreen extends StatefulWidget {
  const StaffListNotificationScreen({Key? key}) : super(key: key);

  @override
  State<StaffListNotificationScreen> createState() =>
      _StaffListNotificationScreenState();
}

class _StaffListNotificationScreenState
    extends State<StaffListNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBar(
        "List of notification",
      ),
      body: Body(),
      floatingActionButton: ScaleTap(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => StaffAddNotificationScreen()));
        },
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
