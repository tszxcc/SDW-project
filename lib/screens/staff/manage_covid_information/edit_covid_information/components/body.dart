import 'package:flutter/material.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _fullNameEditingController = TextEditingController();
  String fullName = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                alignment: Alignment.center,
                // color: Colors.pink,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Edit Covid-19 News',
                  style: TextStyle(fontSize: 20),
                )),
            TextFormField(
              controller: _fullNameEditingController,
              // The validator receives the text that the user has entered.
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(),
                labelText: 'Topic ',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter topic';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              // The validator receives the text that the user has entered.
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(),
                labelText: 'Description',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter description';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: DefaultButton(
                  "Confirm Edit",
                  press: () {
                    setState(() {
                      fullName = _fullNameEditingController.text;
                    });
                  },
                )),
            Text(fullName),
          ]),
        ));
  }
}
