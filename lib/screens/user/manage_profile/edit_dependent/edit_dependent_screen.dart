import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_profile/edit_dependent/components/body.dart';

class EditDependentScreen extends StatefulWidget {
  const EditDependentScreen({Key? key}) : super(key: key);

  @override
  State<EditDependentScreen> createState() => _EditDependentScreenState();
}

class _EditDependentScreenState extends State<EditDependentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Edit dependent",
      ),
      body: Body(),
    );
  }
}
