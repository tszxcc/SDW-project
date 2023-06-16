import 'package:flutter/material.dart';
import 'package:mhcs/bloc/user/register_bloc.dart';
import 'package:mhcs/models/registration/registration_request_model.dart';
import 'package:mhcs/models/registration/registration_response_model.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:mhcs/screens/login/login_screen.dart';
import 'package:mhcs/screens/user/home/home_screen.dart';
import 'package:mhcs/screens/user/registration/sign_up/sign_up_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  RegistrationRequestModel registrationRequestModel =
      RegistrationRequestModel();
  RegistrationBloc registrationBloc = RegistrationBloc();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      'Enter your personal details',
                      style: TextStyle(fontSize: 15),
                    )),
                TextFormField(
                  // The validator receives the text that the user has entered.
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                  ),
                  onSaved: (input) => registrationRequestModel.name = input,
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
                    labelText: 'Username',
                  ),
                  onSaved: (input) => registrationRequestModel.username = input,
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
                    labelText: 'Address',
                  ),
                  onSaved: (input) => registrationRequestModel.address = input,
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
                    labelText: 'Phone Number',
                  ),
                  onSaved: (input) => registrationRequestModel.phoneNo = input,
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
                    labelText: 'NRIC/Passport No.',
                  ),
                  onSaved: (input) => registrationRequestModel.icNumber = input,
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
                    labelText: 'Email Address',
                  ),
                  onSaved: (input) => registrationRequestModel.email = input,
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
                    labelText: 'Age',
                  ),
                  onSaved: (input) => registrationRequestModel.age = input,
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
                    labelText: 'Ethnicity',
                  ),
                  onSaved: (input) =>
                      registrationRequestModel.ethnicity = input,
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
                    labelText: 'Gender(Male/Female)',
                  ),
                  onSaved: (input) => registrationRequestModel.gender = input,
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
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  onSaved: (input) => registrationRequestModel.password = input,
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
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: DefaultButton(
                    "Submit",
                    press: () {
                      if (validateAndSave()) {
                        registerProcess();
                      }
                    },
                  ),
                ),
              ],
            ),
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

  registerProcess() async {
    // Show dialog registering
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Registering"),
            content: Text("Please wait a while..."),
          );
        });

    try {
      // call register API
      RegistrationResponseModel responseModel =
          await registrationBloc.register(registrationRequestModel);

      // To close the dialog when the API already response
      Navigator.pop(context);

      // If the response response true, means success register
      if (responseModel.isSuccess!) {
        // Show Snackbar
        ThemeSnackBar.showSnackBar(context, "Registered Successfully");
        // save data in shared preferences
        // Declare and initialize shared preferences
        SharedPreferences prefs;
        prefs = await SharedPreferences.getInstance();
        // Store user id
        prefs.setInt("user_id", responseModel.data!.id!);
        // Store user name id
        prefs.setString("name", responseModel.data!.name!);
        // Store user address
        prefs.setString("address", responseModel.data!.address!);

        prefs.setString("icNumber", responseModel.data!.icNumber!.toString());
        prefs.setString(
            "profilePhotoUrl", responseModel.data!.profilePhotoUrl!);

        // Navigate user to the home page
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginScreen()));
      } else {
        // Response with false, registration failed
        ThemeSnackBar.showSnackBar(context, "Failed to create an account");
      }
    } catch (e) {
      // To close the dialog when the API already response
      Navigator.pop(context);
      ThemeSnackBar.showSnackBar(context,
          "Something when wrong, please try again later..." + e.toString());
    }
  }
}
