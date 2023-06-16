import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_model.dart';

class CovidInformationItem extends StatelessWidget {
  final CovidInformationModel covidInformationModel;
  const CovidInformationItem(this.covidInformationModel, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5)
            ]),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.pin_drop,
              color: kPrimaryColor,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Topic
                  Text(
                    covidInformationModel.topic!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Description
                  Text(
                    covidInformationModel.description!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Created At
                  Text(
                    covidInformationModel.createdAt!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextGray,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  //CachedNetworkImage(imageUrl: covidInformationModel.image_path!)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
