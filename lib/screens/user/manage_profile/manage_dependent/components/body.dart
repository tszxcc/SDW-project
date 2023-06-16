import 'package:flutter/material.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:mhcs/screens/user/manage_profile/add_dependent/add_dependent_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DefaultButton("Add Dependent", press: addDependent),
        )
      ]),
    );
  }

  addDependent() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const AddDependentScreen()));
  }

  //delete
  //edit
}
