import 'package:flutter/material.dart';
import 'package:mhcs/bloc/staff/notification_bloc.dart';
import 'package:mhcs/models/default_response_model.dart';
import 'package:mhcs/models/manage_notification/notification_model.dart';
import 'package:mhcs/models/manage_notification/notification_response_model.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:mhcs/screens/staff/manage_notification/list_notification/list_notification_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  NotificationModel notificationModel = NotificationModel();
  NotificationBloc notificationBloc = NotificationBloc();
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
                    'Add New Notification',
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(),
                  labelText: 'Title ',
                ),
                onSaved: (input) => notificationModel.title = input,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter title';
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
                  labelText: 'Message',
                ),
                onSaved: (input) => notificationModel.message = input,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter message';
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
                  labelText: 'Category',
                ),
                onSaved: (input) => notificationModel.category = input,
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
                    "Add new notification",
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
            title: Text("Adding"),
            content: Text("Please wait a while..."),
          );
        });

    try {
      // call register API
      DefaultResponseModel responseModel =
          await notificationBloc.addinNotification(notificationModel.title!,
              notificationModel.category!, notificationModel.message!);

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
        // Store title
        prefs.setString("title", notificationModel.title!);
        // Store message
        prefs.setString("message", notificationModel.message!);
        prefs.setString("category", notificationModel.category!);
        // Navigate user to the list notification
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => const StaffListNotificationScreen()));
      } else {
        // Response with false, registration failed
        ThemeSnackBar.showSnackBar(context, "Failed to add notification");
      }
    } catch (e) {
      // To close the dialog when the API already response
      Navigator.pop(context);

      ThemeSnackBar.showSnackBar(context,
          "Something when wrong, please try again later..." + e.toString());
    }
  }
}
