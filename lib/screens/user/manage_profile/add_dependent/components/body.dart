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
          child: Column(children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Enter your dependents details',
                  style: TextStyle(fontSize: 15),
                )),
            TextFormField(
              // The validator receives the text that the user has entered.
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(),
                labelText: 'Full name',
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
                labelText: 'IC No.',
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
                labelText: 'Passport No.',
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
                labelText: 'Date of Birth',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: DefaultButton("Add Dependent")),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: DefaultButton("Save"),
            ),
          ]),
        ));
  }
}
