import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:iconsax/iconsax.dart';

import 'package:mhcs/public_components/constant.dart';

class FloatingActionButtonCustom extends StatelessWidget {
  final Function() press;
  const FloatingActionButtonCustom({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: press,
      child: Container(
        height: 66,
        width: 66,
        decoration: BoxDecoration(
          color: klightGreenPrimaryColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 20,
              spreadRadius: -7,
              color: Colors.black.withOpacity(0.85),
            ),
          ],
        ),
        child: const Center(
            child: Icon(
          Iconsax.add,
          color: kLightBackgroundColor,
          size: 47.52,
        )),
      ),
    );
  }
}
