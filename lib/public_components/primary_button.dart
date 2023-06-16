import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mhcs/public_components/constant.dart';

class PrimaryButton extends StatefulWidget {
  final String title;
  final bool isLoading;
  final String loadingText;
  final Function()? press;

  const PrimaryButton(
      {Key? key,
      required this.title,
      this.press,
      this.isLoading = false,
      this.loadingText = ""})
      : super(key: key);

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  final spinner = const SizedBox(
    height: 24,
    width: 24,
    child: SpinKitDoubleBounce(
      color: kdarkGreenPrimaryColor,
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
            color: widget.isLoading ? Colors.grey : klightGreenPrimaryColor,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(10),
              right: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 20,
                spreadRadius: -7,
                color: Colors.black.withOpacity(0.25),
              ),
            ],
          ),
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
                    : Text(''),
                Text(
                  widget.isLoading ? widget.loadingText : widget.title,
                  style: TextStyle(
                    color:
                        widget.isLoading ? Colors.grey.shade900 : Colors.white,
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
