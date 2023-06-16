import 'package:flutter/material.dart';
import 'package:mhcs/public_components/theme_app_bar.dart';
import 'package:mhcs/screens/staff/manage_movement/search_movement/components/body.dart';

class SearchMovementScreen extends StatefulWidget {
  const SearchMovementScreen({Key? key}) : super(key: key);

  @override
  State<SearchMovementScreen> createState() => _SearchMovementScreenState();
}

class _SearchMovementScreenState extends State<SearchMovementScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ThemeAppBar(
        "Search User",
      ),
      body: Body(),
    );
  }
}
