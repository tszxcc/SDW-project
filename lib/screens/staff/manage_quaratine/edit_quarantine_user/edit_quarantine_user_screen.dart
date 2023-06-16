import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_quaratine/edit_quarantine_user/components/body.dart';

class EditQuarantineUserScreen extends StatefulWidget {
  const EditQuarantineUserScreen({Key? key}) : super(key: key);

  @override
  State<EditQuarantineUserScreen> createState() =>
      _EditQuarantineUserScreenState();
}

class _EditQuarantineUserScreenState extends State<EditQuarantineUserScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        " Edit Quarantine User",
      ),
      body: Body(),
    );
  }
}
