import 'package:flutter/material.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: SingleChildScrollView(
          child: Column(
        children: [
          TextFormField(
            // The validator receives the text that the user has entered.
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(),
              labelText: 'Enter your full name',
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(),
              labelText: 'Enter your IC no',
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(),
              labelText: 'Enter your Passport no',
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(),
              labelText: 'Enter your Date of Birth',
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DefaultButton("Confirm"),
          ),
        ],
      )),
    );
  }
}
