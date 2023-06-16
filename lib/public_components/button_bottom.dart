import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:mhcs/helper/constant.dart';

class ButtonBottom extends StatefulWidget {
  final bool isDisabled;
  final Function()? press;
  final String text;
  final bool isLoading;
  final String loadingText;

  const ButtonBottom(Key? key,
      {this.isDisabled = false,
      this.press,
      required this.text,
      this.isLoading = false,
      this.loadingText = ""})
      : super(key: key);

  @override
  State<ButtonBottom> createState() => _ButtonBottomState();
}

class _ButtonBottomState extends State<ButtonBottom> {
  final spinner = const SizedBox(
    height: 24,
    width: 24,
    child: SpinKitDoubleBounce(
      color: kPrimaryColor,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
      child: ScaleTap(
        onPressed: widget.isDisabled || widget.isLoading ? null : widget.press,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: widget.isDisabled || widget.isLoading
                ? kTextGray
                : kPrimaryLightColor2,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
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
                  widget.isLoading ? widget.loadingText : widget.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
