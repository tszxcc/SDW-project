import 'package:flutter/material.dart';
import 'package:mhcs/bloc/staff/covid_information_bloc.dart';
import 'package:mhcs/bloc/staff/notification_bloc.dart';
import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_model.dart';
import 'package:mhcs/models/manage_notification/notification_model.dart';
import 'package:mhcs/models/manage_notification/notification_response_model.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:mhcs/screens/staff/manage_covid_information/list_covid_information/list_covid_information_screen.dart';
import 'package:mhcs/screens/staff/manage_notification/list_notification/list_notification_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  CovidInformationModel covidInformationModel = CovidInformationModel();
  CovidInformationBloc covidInformationBloc = CovidInformationBloc();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(children: [
              Container(
                  alignment: Alignment.center,
                  // color: Colors.pink,
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    'Add New Covid Information',
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(),
                  labelText: 'Topic ',
                ),
                onSaved: (input) => covidInformationModel.topic = input,
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
                onSaved: (input) => covidInformationModel.description = input,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter description';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: DefaultButton(
                    "Add new Covid-19 Information",
                    press: () {
                      if (validateAndSave()) {
                        addProcess();
                      }
                    },
                  )),
            ]),
          ),
        ));
  }

  bool validateAndSave() {
    final form = _formKey.currentState;

    if (form!.validate()) {
      form.save();
      return true;
    }

    return false;
  }

  addProcess() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Adding new Covid-19 information"),
            content: Text("Please wait a while..."),
          );
        });

    try {
      // call register API
      DefaultResponseModel responseModel =
          await covidInformationBloc.addinCovidInformation(
              covidInformationModel.topic!, covidInformationModel.description!);

      // To close the dialog when the API already response
      Navigator.pop(context);

      // If the response response true, means success register
      if (responseModel.isSuccess!) {
        // Show Snackbar
        ThemeSnackBar.showSnackBar(context, "Added Successfully");
        // save data in shared preferences
        // Declare and initialize shared preferences
        SharedPreferences prefs;
        prefs = await SharedPreferences.getInstance();
        // Store topic
        prefs.setString("topic", covidInformationModel.topic!);
        // Store desciption
        prefs.setString("description", covidInformationModel.description!);
        // Navigate user to the home page
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => const ListCovidInformationScreen()));
      } else {
        // Response with false, registration failed
        ThemeSnackBar.showSnackBar(
            context, "Failed to add Covid-19 Information");
      }
    } catch (e) {
      // To close the dialog when the API already response
      Navigator.pop(context);

      ThemeSnackBar.showSnackBar(context,
          "Something when wrong, please try again later..." + e.toString());
    }
  }
}
