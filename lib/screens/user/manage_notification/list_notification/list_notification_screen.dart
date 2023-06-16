import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_notification/list_notification/components/body.dart';

class ListNotificationScreen extends StatefulWidget {
  const ListNotificationScreen({Key? key}) : super(key: key);

  @override
  State<ListNotificationScreen> createState() => _ListNotificationScreenState();
}

class _ListNotificationScreenState extends State<ListNotificationScreen> {
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
