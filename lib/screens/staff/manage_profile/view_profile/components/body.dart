import 'package:flutter/material.dart';
import 'package:mhcs/public_components/default_button.dart';
import 'package:mhcs/public_components/theme_snack_bar.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    'View User and Dependent List',
                    style: TextStyle(fontSize: 15),
                  )),
              DataTable(columns: const <DataColumn>[
                DataColumn(label: Text('Full Name')),
                DataColumn(label: Text('IC No')),
                DataColumn(label: Text('Dependent Full Name')),
                DataColumn(label: Text('Dependent IC No')),
              ], rows: const <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Text('Sarah Tan')),
                  DataCell(Text('000101010000')),
                  DataCell(Text('May Tan')),
                  DataCell(Text('050101010000')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('John Lim')),
                  DataCell(Text('001101010066')),
                  DataCell(Text('Jason Lim')),
                  DataCell(Text('110101010088')),
                ])
              ])
            ],
          ),
        ));
  }
}
