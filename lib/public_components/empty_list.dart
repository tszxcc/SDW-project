import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  final String text;
  final String query;

  const EmptyList({required this.text, this.query = "_"});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            // If query == "", menas user not search yet, so just show nothing
            query != "" ? text : "",
          ),
        ],
      ),
    );
  }
}
