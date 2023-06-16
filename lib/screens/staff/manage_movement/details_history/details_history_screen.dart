import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_movement/details_history/components/body.dart';

class DetailsHistory extends StatefulWidget {
  const DetailsHistory(this.movementModel, {Key? key}) : super(key: key);

  final MovementModel movementModel;

  @override
  State<DetailsHistory> createState() => _DetailsHistoryState();
}

class _DetailsHistoryState extends State<DetailsHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBar(
        "Details History",
        // trailing: Material(
        //   color: Colors.transparent,
        //   child: IconButton(
        //     color: Colors.grey,
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => const GroupCheckInScreen(),
        //         ),
        //       );
        //     },
        //     icon: const Icon(FontAwesomeIcons.qrcode),
        //   ),
        // ),
      ),
      body: Body(widget.movementModel),
    );
  }
}
