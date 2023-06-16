import 'package:flutter/material.dart';
import 'package:mhcs/screens/user/manage_quarantine/request_another_location/request_another_location_screen.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Address",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, color: Colors.grey.shade600)),
                            Text("Dewan Utama SMK Abdul Samad",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            Text("16600 Pulai Chodong",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            Text("Kelantan",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                shadowColor: Colors.black,
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.navigation_outlined,
                                size: 24.0,
                              ),
                              label: const Text('Navigate To Location'),
                            ),
                            Column(
                              children: const <Widget>[
                                SizedBox(),
                                SizedBox(height: 5),
                                Card(),
                              ],
                            ),
                            Text("Contact Number",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, color: Colors.grey.shade600)),
                            Text("+60 12-323-9930 (Puan Suria)",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                shadowColor: Colors.black,
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.phone,
                                size: 24.0,
                              ),
                              label: const Text('Contact Center'),
                            ),
                            Column(
                              children: const <Widget>[
                                SizedBox(),
                                SizedBox(height: 10),
                                Card(),
                              ],
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                shadowColor: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RequestAnotherLocationScreen()),
                                );
                              },
                              child: const Text("Request Anoother Location"),
                            ),
                          ]),
                    ),
                    shadowColor: const Color.fromARGB(255, 0, 12, 0)),
              ),
              Column(
                children: const <Widget>[
                  SizedBox(),
                  SizedBox(height: 10),
                  Card(),
                ],
              ),
              Card(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  elevation: 5,
                  child: Column(
                    children: [
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.23,
                        isFirst: true,
                        beforeLineStyle: LineStyle(
                            color: const Color.fromARGB(255, 186, 185, 184)
                                .withOpacity(0.7),
                            thickness: 1),
                        indicatorStyle: const IndicatorStyle(
                            drawGap: true,
                            padding: EdgeInsets.all(2),
                            width: 15,
                            height: 15,
                            color: Color.fromARGB(255, 7, 255, 15)),
                        startChild: Center(
                          child: Text(
                            "01 Nov 21",
                            style: GoogleFonts.notoSans(
                                fontSize: 15, color: Colors.grey.shade600),
                          ),
                        ),
                        endChild: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 10, top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CC1 (POSITIVE-OMICRON)",
                                style: GoogleFonts.notoSans(
                                    fontSize: 15,
                                    color: const Color.fromARGB(255, 4, 0, 255)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.23,
                        beforeLineStyle: LineStyle(
                            color: const Color.fromARGB(255, 186, 185, 184)
                                .withOpacity(0.7),
                            thickness: 1),
                        indicatorStyle: const IndicatorStyle(
                            drawGap: true,
                            padding: EdgeInsets.all(2),
                            width: 15,
                            height: 15,
                            color: Color.fromARGB(255, 7, 255, 15)),
                        startChild: Center(
                          child: Text(
                            "02 Nov 21",
                            style: GoogleFonts.notoSans(
                                fontSize: 15, color: Colors.grey.shade600),
                          ),
                        ),
                        endChild: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 10, top: 30, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Check-in",
                                style: GoogleFonts.notoSans(
                                    fontSize: 15,
                                    color: const Color.fromARGB(255, 4, 0, 255)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "30 Days",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.23,
                        beforeLineStyle: LineStyle(
                            color: const Color.fromARGB(255, 186, 185, 184)
                                .withOpacity(0.7),
                            thickness: 1),
                        indicatorStyle: const IndicatorStyle(
                            drawGap: true,
                            padding: EdgeInsets.all(2),
                            width: 15,
                            height: 15,
                            color: Color.fromARGB(255, 250, 212, 0)),
                        startChild: Center(
                          child: Text(
                            "01 Dec 21",
                            style: GoogleFonts.notoSans(
                                fontSize: 15, color: Colors.grey.shade600),
                          ),
                        ),
                        endChild: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 10, top: 30, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Covid-19 Swap Test",
                                style: GoogleFonts.notoSans(
                                    fontSize: 15,
                                    color: const Color.fromARGB(255, 4, 0, 255)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Waiting Result",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  shadowColor: const Color.fromARGB(255, 0, 12, 0))
            ])));
  }
}
