import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_quaratine/add_quarantine_user/components/body.dart';

class AddQuarantineUserScreen extends StatefulWidget {
  const AddQuarantineUserScreen({Key? key}) : super(key: key);

  @override
  State<AddQuarantineUserScreen> createState() =>
      _AddQuarantineUserScreenState();
}

class _AddQuarantineUserScreenState extends State<AddQuarantineUserScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Add Quarantine User",
      ),
      body: Body(),
    );
  }
}
