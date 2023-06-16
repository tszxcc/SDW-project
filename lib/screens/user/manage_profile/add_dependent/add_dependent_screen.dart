import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_profile/add_dependent/components/body.dart';

class AddDependentScreen extends StatefulWidget {
  const AddDependentScreen({Key? key}) : super(key: key);

  @override
  State<AddDependentScreen> createState() => _AddDependentScreenState();
}

class _AddDependentScreenState extends State<AddDependentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Add dependent",
      ),
      body: Body(),
    );
  }
}
