import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';
import 'package:mhcs/screens/staff/manage_movement/details_history/details_history_screen.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem(this.movementModel, {Key? key}) : super(key: key);

  final MovementModel movementModel;

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsHistory(movementModel),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5)
            ]),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.pin_drop,
              color: kPrimaryColor,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Premise Name
                  Text(
                    movementModel.premise!.name!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Premise Address
                  Text(
                    movementModel.premise!.address!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Check-In time
                  Text(
                    movementModel.checkInTime!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextGray,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
