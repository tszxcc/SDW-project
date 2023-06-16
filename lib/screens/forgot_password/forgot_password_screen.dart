import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Reset Password",
      ),
      body: Body(),
    );
  }
}
