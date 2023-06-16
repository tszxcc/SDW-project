import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:mhcs/helper/constant.dart';

class DoubleButton extends StatelessWidget {
  final Function()? onPressButton1;
  final String textButton1;
  final Function()? onPressButton2;
  final String textButton2;

  const DoubleButton({
    this.onPressButton1,
    required this.textButton1,
    this.onPressButton2,
    required this.textButton2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ScaleTap(
            onPressed: onPressButton1,
            child: Container(
              decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.black.withOpacity(0.33), width: 0.25)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Text(
                  textButton1,
                  textAlign: TextAlign.center,
                  //style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ScaleTap(
            onPressed: onPressButton2,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 0.5),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Text(
                  textButton2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
