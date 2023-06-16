import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_quarantine/quarantine_record/components/body.dart';

class QuarantineRecordScreen extends StatefulWidget {
  const QuarantineRecordScreen({Key? key}) : super(key: key);

  @override
  State<QuarantineRecordScreen> createState() => _QuarantineRecordScreenState();
}

class _QuarantineRecordScreenState extends State<QuarantineRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Quarantine Record",
      ),
      body: Body(),
    );
  }
}
