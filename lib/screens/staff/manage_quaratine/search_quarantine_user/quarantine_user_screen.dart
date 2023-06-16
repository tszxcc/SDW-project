import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_quaratine/search_quarantine_user/components/body.dart';

class QuarantineUserScreen extends StatefulWidget {
  const QuarantineUserScreen({Key? key}) : super(key: key);

  @override
  State<QuarantineUserScreen> createState() => _QuarantineUserScreenState();
}

class _QuarantineUserScreenState extends State<QuarantineUserScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Quarantine User",
      ),
      body: Body(),
    );
  }
}
