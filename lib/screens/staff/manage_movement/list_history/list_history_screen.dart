import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_movement/list_history/components/body.dart';

class ListHistoryScreen extends StatefulWidget {
  const ListHistoryScreen({Key? key}) : super(key: key);

  @override
  State<ListHistoryScreen> createState() => _ListHistoryScreenState();
}

class _ListHistoryScreenState extends State<ListHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Histories",
      ),
      body: Body(),
    );
  }
}
