import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:mhcs/bloc/user/quarantine_bloc.dart';
import 'package:mhcs/models/manage_quarantine/list_quarantine_response_model.dart';
import 'package:mhcs/models/manage_quarantine/quarantine_model.dart';
import 'package:mhcs/screens/user/manage_quarantine/quarantine_record/quarantine_record_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body(this.quarantineCenter, {Key? key}) : super(key: key);

  final ListQuarantineResponseModel quarantineCenter;
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.quarantineCenter.data!.length,
      itemBuilder: (context, index) {
        QuarantineModel item = widget.quarantineCenter.data![index];
        return ListTile(
            contentPadding: const EdgeInsets.all(6),
            title: SizedBox(
                child: Card(
                    elevation: 5,
                    color: Colors.blue.shade900,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        item.quarantineCenterId.toString(),
                        style: GoogleFonts.notoSans(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ))),
            subtitle: SizedBox(
                height: 60,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const QuarantineRecordScreen()),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.quarantineTimelines![0].status!,
                              style: GoogleFonts.notoSans(
                                  color: Colors.blue.shade900,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              item.quarantineTimelines![0].date!,
                              style: GoogleFonts.notoSans(
                                  color: Colors.grey.shade700,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ))));
      },
    );
  }
}
