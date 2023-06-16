import 'package:flutter/material.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:mhcs/screens/staff/manage_movement/list_history/list_history_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
            // The validator receives the text that the user has entered.
            decoration: const InputDecoration(
              labelText: 'Enter user IC Number or Passport Number ',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: DefaultButton(
            "Search",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListHistoryScreen(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
