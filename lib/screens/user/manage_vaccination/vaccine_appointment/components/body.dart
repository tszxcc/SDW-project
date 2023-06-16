import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mhcs/public_components/primary_button.dart';
import 'package:mhcs/public_components/secondary_button.dart';
import 'package:mhcs/public_components/input_decoration.dart';
import 'package:mhcs/screens/login/login_screen.dart';
import 'package:mhcs/screens/user/home/home_screen.dart';
import 'package:mhcs/screens/user/manage_vaccination/vaccination_status/vaccination_status_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

enum Interest { yes, no }

enum Disease { yes, no }

enum OKU { yes, no }

class _BodyState extends State<Body> {
  Interest? _called;
  Disease? _disease;
  OKU? _oku;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //title: const Text('Vaccination Appointment'),
            ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.blueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.blueAccent,
                  ),
                  Center(
                      child: InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 300,
                        height: 50,
                        child: Row(children: const [
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            'Vaccination Appointment',
                            style: TextStyle(fontSize: 15),
                          ),
                        ]),
                      ),
                    ),
                  )),
                  Card(
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      width: 340,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('1. Interested to take vaccination?'),
                            RadioListTile<Interest>(
                                title: const Text('Yes'),
                                value: Interest.yes,
                                groupValue: _called,
                                onChanged: (Interest? value) {
                                  setState(() {
                                    _called = value;
                                  });
                                }),
                            RadioListTile<Interest>(
                                title: const Text('No'),
                                value: Interest.no,
                                groupValue: _called,
                                onChanged: (Interest? value) {
                                  setState(() {
                                    _called = value;
                                  });
                                }),
                            const Text('2. Have any chronic disease?'),
                            RadioListTile<Disease>(
                                title: const Text('Yes'),
                                value: Disease.yes,
                                groupValue: _disease,
                                onChanged: (Disease? value) {
                                  setState(() {
                                    _disease = value;
                                  });
                                }),
                            RadioListTile<Disease>(
                                title: const Text('No'),
                                value: Disease.no,
                                groupValue: _disease,
                                onChanged: (Disease? value) {
                                  setState(() {
                                    _disease = value;
                                  });
                                }),
                            const Text('3. Are you registered as OKU?'),
                            RadioListTile<OKU>(
                                title: const Text('Yes'),
                                value: OKU.yes,
                                groupValue: _oku,
                                onChanged: (OKU? value) {
                                  setState(() {
                                    _oku = value;
                                  });
                                }),
                            RadioListTile<OKU>(
                                title: const Text('No'),
                                value: OKU.no,
                                groupValue: _oku,
                                onChanged: (OKU? value) {
                                  setState(() {
                                    _oku = value;
                                  });
                                }),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 50, 30, 10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  //minimumSize: const Size.fromHeight(40),
                                ),
                                onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const VaccinationStatusScreen(),
                                    ),
                                  ),
                                  showDialog<String>(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title:
                                          const Text('Successfully Submitted!'),
                                      content: Text(_called == Interest.yes
                                          ? 'Please check your vaccination status from time to time for updates'
                                          : 'Protect yourself and others, get vaccinated!'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context, 'OK');
                                            Navigator.pop(context);
                                          },
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  PrimaryButton(
                                    title: "already register",
                                    press: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const VaccinationStatusScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                },
                                child: const Text('Register'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ));
  }
}
