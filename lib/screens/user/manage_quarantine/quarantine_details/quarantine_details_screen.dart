import 'package:flutter/material.dart';
import 'package:mhcs/models/manage_quarantine/list_quarantine_response_model.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/user/manage_quarantine/quarantine_details/components/body.dart';

class QuarantineDetailsScreen extends StatefulWidget {
  const QuarantineDetailsScreen(this.quarantineCenter, {Key? key})
      : super(key: key);
  final ListQuarantineResponseModel quarantineCenter;
  @override
  State<QuarantineDetailsScreen> createState() =>
      _QuarantineDetailsScreenState();
}

class _QuarantineDetailsScreenState extends State<QuarantineDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBar(
        "My Quarantine Records",
        previous: false,
      ),
      body: Body(widget.quarantineCenter),
    );
  }
}
