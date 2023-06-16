import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBarHomePage extends StatefulWidget {
  final Widget title;
  final Widget? leading;
  final List<Widget>? actions;

  const AppBarHomePage({
    Key? key,
    required this.title,
    this.leading,
    this.actions,
  }) : super(key: key);

  @override
  _AppBarHomePageState createState() => _AppBarHomePageState();
}

class _AppBarHomePageState extends State<AppBarHomePage> {
  @override
  Widget build(BuildContext context) {
    var scrSize = MediaQuery.of(context).size;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 50.0,
          sigmaY: 50.0,
        ),
        child: Container(
          color: Colors.white.withOpacity(0.2),
          alignment: Alignment.center,
          width: scrSize.width,
          height: 57,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: widget.title,
                ),
                Container(
                  color: Colors.transparent,
                  width: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Covid-19 Vaccination",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {
                          print("add money");
                        },
                        icon: const Icon(
                          Iconsax.wallet,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
