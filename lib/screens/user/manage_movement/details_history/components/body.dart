import 'package:flutter/material.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';

class Body extends StatefulWidget {
  const Body(this.movementModel, {Key? key}) : super(key: key);

  final MovementModel movementModel;

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
                      Icons.pin_drop,
                      size: 50,
                      color: kPrimaryColor,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                // Date
                const Text(
                  "Check In Date Time:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.movementModel.checkInTime!,
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Date
                const Text(
                  "Check Out Date Time:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.movementModel.checkOutTime!,
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Location
                const Text(
                  "Location:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.movementModel.premise!.address!,
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Personal Status
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          gradient: kGradientSuccess,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(children: const [
                        Text(
                          "Personal Status",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "LOW RISK",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),

                    // Vaccination Status
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          gradient: kPrimaryGradientColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(children: const [
                        Text(
                          "Vaccination Status",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "FULLY VACCINATED",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
