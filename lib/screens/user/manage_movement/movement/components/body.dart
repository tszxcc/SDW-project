import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';
import 'package:mhcs/models/user_model.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body(this.movementModel, {Key? key}) : super(key: key);
  final MovementModel movementModel;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  UserModel userModel = UserModel();
  @override
  void initState() {
    // TODO: implement initState
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _topContent(),
          const SizedBox(
            height: 20,
          ),
          _centerContent(),
          const SizedBox(
            height: 20,
          ),
          if (widget.movementModel.premise != null) _movementHistory(),
        ],
      ),
    );
  }

  Container _topContent() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: CachedNetworkImageProvider(userModel
                          .profilePhotoUrl ??
                      "https://www.clipartmax.com/png/middle/171-1717870_stockvader-predicted-cron-for-may-user-profile-icon-png.png"),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 15),
                Text(
                  userModel.name ?? "",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  userModel.icNumber ?? "",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _centerContent() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: kLightGray),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(
                    FontAwesomeIcons.shieldVirus,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "LOW RISK",
                    style: TextStyle(
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                thickness: 0.5, // thickness of the line
              ),
              Column(
                children: const [
                  Icon(
                    FontAwesomeIcons.syringe,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "FULLY VACCINATED",
                    style: TextStyle(
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _movementHistory() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: kLightGray),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: const Icon(
                FontAwesomeIcons.mapLocationDot,
                color: Colors.grey,
                size: 30.0,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Last Check-In",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.movementModel.premise!.name!,
                    style: TextStyle(
                      color: kTextColor,
                    ),
                  ),
                  Text(
                    "Check-in at " + widget.movementModel.checkInTime!,
                    style: TextStyle(
                      color: kTextColor,
                    ),
                  ),
                  widget.movementModel.checkOutTime != null
                      ? Text(
                          "Check-out at " + widget.movementModel.checkOutTime!,
                          style: TextStyle(
                            color: kTextColor,
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getUserData() async {
    userModel = UserModel();
    // Declare and initialize shared preferences
    SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();

    setState(() {
      // get User from shared preferences
      userModel.name = prefs.getString("name") ?? "";
      userModel.address = prefs.getString("address") ?? "";
      userModel.icNumber = prefs.getString("icNumber") ?? "";
      userModel.profilePhotoUrl = prefs.getString("profilePhotoUrl") ??
          "https://www.clipartmax.com/png/middle/171-1717870_stockvader-predicted-cron-for-may-user-profile-icon-png.png";
    });
  }
}
