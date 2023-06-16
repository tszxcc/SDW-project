import 'package:flutter/material.dart';
import 'package:mhcs/bloc/login_bloc.dart';
import 'package:mhcs/main.dart';
import 'package:mhcs/models/login/login_response_model.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:mhcs/screens/forgot_password/forgot_password_screen.dart';
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
  LoginBloc loginBloc = LoginBloc();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Form(
          key: _formKey,
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                onSaved: (input) => email = input,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                onSaved: (input) => password = input,
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const ForgotPasswordScreen()));
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultButton("Sign In", press: () {
                if (validateAndSave()) {
                  loginProcess();
                }
              }),
            ),
            Row(
              children: [
                const Text('If you dont have account?'),
                TextButton(
                  child: const Text(
                    'sign-up',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        //signup screen
                        builder: (_) => const RegistrationScreen()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ]))
    ]);
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  loginProcess() async {
    // Show dialog registering
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Login"),
            content: Text("Please wait a while..."),
          );
        });
    try {
      // call check-in API
      LoginResponseModel responseModel =
          await loginBloc.login(email!, password!);
      // To close the dialog when the API already response
      Navigator.pop(context);
      // If the response response true, means success login
      if (responseModel.isSuccess!) {
        ThemeSnackBar.showSnackBar(context, "Login Successfully");
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
        // Store user role
        prefs.setString("role", responseModel.data!.role!);

        prefs.setString("icNumber", responseModel.data!.icNumber!);
        prefs.setString(
            "profilePhotoUrl", responseModel.data!.profilePhotoUrl!);

// Role User
        if (responseModel.data!.role == "User") {
          // Navigate user to the home page
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => HomeScreen()),
              (Route<dynamic> route) => false);
          // Update the data in the UI
          setState(() {});
        } else {
          // Role staff

          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => MyHomePage(
                        title: "Staff Dashboard",
                      )),
              (Route<dynamic> route) => false);
        }
      } else {
        // Response with false, check-in failed
        ThemeSnackBar.showSnackBar(context, "Login failed");
      }
    } catch (e) {
      // To close the dialog when the API already response
      Navigator.pop(context);
      ThemeSnackBar.showSnackBar(context,
          "Something when wrong, please try again later..." + e.toString());
    }
  }
}
