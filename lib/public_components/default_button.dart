import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mhcs/helper/constant.dart';

class DefaultButton extends StatefulWidget {
  final String title;
  final bool isLoading;
  final String loadingText;
  final Function()? press;

  DefaultButton(this.title,
      {this.press, this.isLoading = false, this.loadingText = ""});

  @override
  _DefaultButtonState createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  final spinner = const SizedBox(
    height: 24,
    width: 24,
    child: SpinKitDoubleBounce(
      color: kPrimaryColor,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: widget.isLoading ? null : widget.press,
      scaleMinValue: 0.95,
      scaleCurve: CurveSpring(),
      opacityMinValue: 0.90,
      opacityCurve: Curves.ease,
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: widget.isLoading ? kDisabledBg : kPrimaryColor,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(15),
                right: Radius.circular(15),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 17.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.isLoading
                    ? Row(
                        children: [
                          spinner,
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      )
                    : const Text(''),
                Text(
                  widget.isLoading ? widget.loadingText : widget.title,
                  style: TextStyle(
                    color: widget.isLoading ? kDisabledText : Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
