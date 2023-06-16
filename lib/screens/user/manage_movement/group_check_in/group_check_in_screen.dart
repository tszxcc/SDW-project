import 'package:flutter/material.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_movement/group_check_in/components/body.dart';

class GroupCheckInScreen extends StatefulWidget {
  const GroupCheckInScreen({Key? key}) : super(key: key);

  @override
  State<GroupCheckInScreen> createState() => _GroupCheckInScreenState();
}

class _GroupCheckInScreenState extends State<GroupCheckInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: DefaultButton("Done"),
      ),
      appBar: ThemeAppBar(
        "Select Dependent",
      ),
      body: Body(),
    );
  }
}
