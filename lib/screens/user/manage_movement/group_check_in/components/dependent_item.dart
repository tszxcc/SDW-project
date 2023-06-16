import 'package:flutter/material.dart';
import 'package:mhcs/helper/constant.dart';

class DependentItem extends StatefulWidget {
  const DependentItem(this.dependentId, this.dependentName, {Key? key})
      : super(key: key);

  final int dependentId;
  final String dependentName;

  @override
  State<DependentItem> createState() => _DependentItemState();
}

class _DependentItemState extends State<DependentItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
              // Add shadow to container
              boxShadow: [
                BoxShadow(blurRadius: 10, color: Colors.black.withOpacity(0.10))
              ],
              // Add background color to container
              color: Colors.white,
              // Add border radius to the container
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.dependentName,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
