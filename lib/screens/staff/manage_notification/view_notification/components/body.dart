import 'package:flutter/material.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';
import 'package:mhcs/models/manage_notification/notification_model.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';

class Body extends StatefulWidget {
  const Body(this.notificationModel, {Key? key}) : super(key: key);

  final NotificationModel notificationModel;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // To allow scrollable if not fit the screen
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                // Add shadow to container
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, color: Colors.black.withOpacity(0.25))
                ],
                // Add background color to container
                color: Colors.white,
                // Add border radius to the container
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Pin location icon with background color in a circle
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.1),
                      // Make the container shape as a circle
                      shape: BoxShape.circle,
                    ),
                    // Icon Pin
                    child: const Icon(
                      Icons.info,
                      size: 50,
                      color: kPrimaryColor,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                // Title
                const Text(
                  "Title",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.notificationModel.title!,
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Message
                const Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.notificationModel.message!,
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
