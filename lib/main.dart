import 'package:flutter/material.dart';
import 'package:mhcs/sample_item.dart';
import 'package:mhcs/screens/login/login_screen.dart';
import 'package:mhcs/screens/forgot_password/forgot_password_screen.dart';
import 'package:mhcs/screens/staff/manage_movement/search_movement/search_movement_screen.dart';
import 'package:mhcs/screens/staff/manage_profile/view_profile/view_profile_screen.dart';
import 'package:mhcs/screens/user/home/home_screen.dart';
import 'package:mhcs/screens/user/manage_movement/group_check_in/group_check_in_screen.dart';
import 'package:mhcs/screens/user/registration/sign_up/sign_up_screen.dart';
import 'package:mhcs/screens/user/manage_profile/add_dependent/add_dependent_screen.dart';
import 'package:mhcs/screens/user/manage_profile/edit_dependent/edit_dependent_screen.dart';
import 'package:mhcs/screens/user/manage_profile/manage_dependent/manage_dependent_screen.dart';
import 'package:mhcs/screens/user/manage_profile/update_profile/update_profile_screen.dart';
import 'package:mhcs/screens/user/manage_movement/list_history/list_history_screen.dart';
import 'package:mhcs/screens/user/manage_movement/movement/movement_screen.dart';
import 'package:mhcs/screens/user/manage_quarantine/quarantine_details/quarantine_details_screen.dart';
import 'package:mhcs/screens/user/manage_quarantine/quarantine_record/quarantine_record_screen.dart';
import 'package:mhcs/screens/user/manage_quarantine/request_another_location/request_another_location_screen.dart';
import 'package:mhcs/screens/user/manage_vaccination/vaccine_registration/vaccine_registration_screen.dart';
import 'package:mhcs/screens/user/manage_notification/list_notification/list_notification_screen.dart';
import 'package:mhcs/screens/user/manage_covid_information/covid_information_details/covid_information_details_screen.dart';
import 'package:mhcs/screens/staff/manage_covid_information/add_covid_information/add_covid_information_screen.dart';
import 'package:mhcs/screens/staff/manage_covid_information/edit_covid_information/edit_covid_information_screen.dart';
import 'package:mhcs/screens/staff/manage_covid_information/list_covid_information/list_covid_information_screen.dart';
import 'package:mhcs/screens/staff/manage_covid_information/view_covid_information/view_covid_information_screen.dart';
import 'package:mhcs/screens/staff/manage_notification/add_notification/add_notification_screen.dart';
import 'package:mhcs/screens/staff/manage_notification/edit_notification/edit_notification_screen.dart';
import 'package:mhcs/screens/staff/manage_notification/list_notification/list_notification_screen.dart';
import 'package:mhcs/screens/staff/manage_notification/view_notification/view_notification_screen.dart';
import 'package:mhcs/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MHCS',
      theme: theme(),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<SampleItem> items = [
    // Module 1
    const SampleItem("Staff/List User", ViewProfileScreen()),
    // Module 2
    const SampleItem("Staff/Search User Movement", SearchMovementScreen()),
    // Module 3
    // Module 4
    // Module 5
    const SampleItem(
        "Staff/Add Covid Information", AddCovidInformationScreen()),
    const SampleItem(
        "Staff/Edit Covid Information", EditCovidInformationScreen()),
    const SampleItem("Staff/Add Notification", StaffAddNotificationScreen()),
    const SampleItem("Staff/Edit Notification", StaffEditNotificationScreen()),
    const SampleItem("Staff/List Notification", StaffListNotificationScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              title: Text(item.name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => item.screen,
                  ),
                );
              });
        },
      ),
    );
  }
}
