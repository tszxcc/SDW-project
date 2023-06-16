import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String center = 'Kolej Komuniti Kulim';
  final TextEditingController remarksController = TextEditingController();

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'Kolej Komuniti Kulim',
      'label': 'Kolej Komuniti Kulim',
    },
    {
      'value': 'Kolej Komuniti Batu Pahat',
      'label': 'Kolej Komuniti Batu Pahat',
    },
    {
      'value': 'Kolej Komuniti Jasin',
      'label': 'Kolej Komuniti Jasin',
    },
    {
      'value': 'Kolej Komuniti Bukit Mertajam',
      'label': 'Kolej Komuniti Bukit Mertajam',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  SelectFormField(
                    type: SelectFormFieldType.dropdown,
                    labelText: 'Quarantine Center',
                    items: _items,
                    onChanged: (val) => center = val,
                    onSaved: (val) => center = val!,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select Quarantine Center';
                      }
                      center = value;
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                      child: TextField(
                    minLines: 4,
                    maxLines: 10,
                    keyboardType: TextInputType.multiline,
                    controller: remarksController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Remarks',
                      hintText: 'Enter remarks or reason to change',
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )));
  }
}
