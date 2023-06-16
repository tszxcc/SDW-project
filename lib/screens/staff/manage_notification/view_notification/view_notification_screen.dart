import 'package:flutter/material.dart';
import 'package:mhcs/models/manage_notification/notification_model.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_notification/view_notification/components/body.dart';

class StaffViewNotificationScreen extends StatefulWidget {
  const StaffViewNotificationScreen(this.notificationModel, {Key? key})
      : super(key: key);

  final NotificationModel notificationModel;
  @override
  State<StaffViewNotificationScreen> createState() =>
      _StaffViewNotificationScreenState();
}

class _StaffViewNotificationScreenState
    extends State<StaffViewNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBar(
        "Notification Messages",
      ),
      body: Body(widget.notificationModel),
    );
  }
}
