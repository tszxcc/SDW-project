import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mhcs/bloc/user/movement_bloc.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';
import 'package:mhcs/models/manage_movement/movement_response_model.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:mhcs/screens/user/manage_movement/list_history/list_history_screen.dart';
import 'package:mhcs/screens/user/manage_movement/movement/components/body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MovementScreen extends StatefulWidget {
  const MovementScreen({Key? key}) : super(key: key);

  @override
  State<MovementScreen> createState() => _MovementScreenState();
}

class _MovementScreenState extends State<MovementScreen> {
  final MovementModel movementModel = MovementModel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(8.0),
          child: movementModel.checkInTime == null ||
                  movementModel.checkOutTime != null
              ? DefaultButton(
                  "Check-In",
                  press: handleCheckIn,
                )
              : DefaultButton(
                  "Check-Out",
                  press: handleCheckOut,
                ),
        ),
        appBar: ThemeAppBar(
          "Movement Tracking",
          trailing: Material(
            color: Colors.transparent,
            child: IconButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListHistoryScreen(),
                  ),
                );
              },
              icon: const Icon(FontAwesomeIcons.clock),
            ),
          ),
        ),
        body: Body(movementModel),
      ),
    );
  }

  handleCheckIn() async {
    // Show dialog registering
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Check-In"),
            content: Text("Please wait a while..."),
          );
        });

    SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();

    // Declare bloc
    MovementBloc movementBloc = MovementBloc();
    // get User from shared preferences
    int userId = prefs.getInt("user_id") ?? 1;
    int premiseId = Random().nextInt(9);
    try {
      // call check-in API
      MovementResponseModel responseModel =
          await movementBloc.storeCheckInData(userId, premiseId);

      // To close the dialog when the API already response
      Navigator.pop(context);

      // If the response response true, means success check-in
      if (responseModel.isSuccess!) {
        ThemeSnackBar.showSnackBar(context, "Check-In Successfully");

        // Update the data in the UI
        setState(() {
          // Here is how you can access the data in the response
          movementModel.premise = responseModel.data!.premise;
          movementModel.checkInTime = responseModel.data!.checkInTime;
          movementModel.checkOutTime = null;
        });
      } else {
        // Response with false, check-in failed
        ThemeSnackBar.showSnackBar(context, "Check-In failed");
      }
    } catch (e) {
      // To close the dialog when the API already response
      Navigator.pop(context);
      ThemeSnackBar.showSnackBar(context,
          "Something when wrong, please try again later..." + e.toString());
    }
  }

  handleCheckOut() async {
    // Show dialog registering
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Check-Out"),
            content: Text("Please wait a while..."),
          );
        });

    // Declare and initialize shared preferences
    SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();

    // Declare Bloc
    MovementBloc movementBloc = MovementBloc();
    // get User from shared preferences
    int userId = prefs.getInt("user_id") ?? 1;
    try {
      // call checkout API
      MovementResponseModel responseModel =
          await movementBloc.storeCheckOutData(userId);

      // To close the dialog when the API already response
      Navigator.pop(context);

      // If the response response true, means success check-out
      if (responseModel.isSuccess!) {
        ThemeSnackBar.showSnackBar(context, "Check-Out Successfully");
        // Here is how you can access the data in the response
        // and handle according your needs

        // Update the data in the UI
        setState(() {
          movementModel.premise = responseModel.data!.premise;
          movementModel.checkInTime = responseModel.data!.checkInTime;
          movementModel.checkOutTime = responseModel.data!.checkOutTime;
        });
      } else {
        // Response with false, check-out failed
        ThemeSnackBar.showSnackBar(context, "Check-Out failed");
      }
    } catch (e) {
      // To close the dialog when the API already response
      Navigator.pop(context);
      ThemeSnackBar.showSnackBar(context,
          "Something when wrong, please try again later..." + e.toString());
    }
  }
}
