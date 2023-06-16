import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_quaratine/quarantine_user_record/components/body.dart';

class QuarantineUserRecordScreen extends StatefulWidget {
  const QuarantineUserRecordScreen({Key? key}) : super(key: key);

  @override
  State<QuarantineUserRecordScreen> createState() =>
      _QuarantineUserRecordScreenState();
}

class _QuarantineUserRecordScreenState
    extends State<QuarantineUserRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Quarantine User Record",
      ),
      body: Body(),
    );
  }
}
