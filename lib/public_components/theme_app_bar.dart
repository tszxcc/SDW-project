import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ThemeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool previous;
  final Color color;
  final Widget? trailing;
  final Widget? leading;
  final Function()? onBackPressed;

  const ThemeAppBar(
    this.title, {
    this.previous = true,
    this.color = Colors.transparent,
    this.trailing,
    this.leading,
    this.onBackPressed,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: previous
          ? IconButton(
              onPressed: onBackPressed ??
                  () {
                    Navigator.pop(context);
                  },
              iconSize: 24,
              icon: const Icon(
                Iconsax.arrow_left,
                color: Colors.black,
              ),
            )
          : null,
      actions: <Widget>[
        trailing != null ? trailing! : const SizedBox(),
      ],
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      backgroundColor: color,
      // border: Border.symmetric(vertical: BorderSide.none),
      // middle: Text(
      //   "",
      //   style: TextStyle(
      //     fontFamily: 'Poppins',
      //     fontWeight: FontWeight.normal,
      //   ),
      // ),
    );
  }
}
