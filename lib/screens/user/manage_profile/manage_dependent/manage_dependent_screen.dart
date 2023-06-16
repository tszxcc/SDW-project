import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_profile/manage_dependent/components/body.dart';

class ManageDependentScreen extends StatefulWidget {
  const ManageDependentScreen({Key? key}) : super(key: key);

  @override
  State<ManageDependentScreen> createState() => _ManageDependentScreenState();
}

class _ManageDependentScreenState extends State<ManageDependentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Manage dependent",
      ),
      body: Body(),
    );
  }
}
