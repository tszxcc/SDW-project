import 'package:flutter/material.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your email',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DefaultButton("Reset Password"),
          ),
        ],
      ),
    );
  }
}
