import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mhcs/bloc/staff/covid_information_bloc.dart';
import 'package:mhcs/bloc/user/notification_bloc.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/helper/http_response.dart';
import 'package:mhcs/models/manage_covid_information/covid_information_model.dart';
import 'package:mhcs/models/manage_notification/notification_model.dart';
import 'package:mhcs/public_components/empty_list.dart';
import 'package:mhcs/public_components/theme_spinner.dart';
import 'package:mhcs/screens/user/manage_notification/list_notification/components/notification_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // Declare and initialize Covid Infomation Bloc
  CovidInformationBloc covidInformationBloc = CovidInformationBloc();

  final PagingController<int, CovidInformationModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int start) async {
    try {
      // Declare and initialize shared preferences
      SharedPreferences prefs;
      prefs = await SharedPreferences.getInstance();

      // get User from shared preferences
      int userId = prefs.getInt("user_id") ?? 1;

      final response = await covidInformationBloc.getListOfCovidInformation();

      if (response.statusCode == HttpResponse.HTTP_OK) {
        List<CovidInformationModel>? covidInformationModel = response.data;

        _pagingController.appendLastPage(covidInformationModel!);
      } else {
        _pagingController.error = response.message ?? "Server Error";
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                PagedSliverList<int, CovidInformationModel>(
                  pagingController: _pagingController,
                  builderDelegate:
                      PagedChildBuilderDelegate<CovidInformationModel>(
                    firstPageProgressIndicatorBuilder: (context) {
                      return ThemeSpinner.spinner();
                    },
                    noItemsFoundIndicatorBuilder: (context) => const EmptyList(
                      text: "You don't have any notification yet.",
                      query: '',
                    ),
                    animateTransitions: true,
                    itemBuilder: (context, covidInformationModel, index) =>
                        covidInformationItem(covidInformationModel),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget covidInformationItem(CovidInformationModel covidInformationModel) {
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
                  // Premise Name
                  Text(
                    covidInformationModel.topic!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Premise Address
                  Text(
                    covidInformationModel.description!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Check-In time
                  Text(
                    covidInformationModel.createdAt!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTextGray,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
