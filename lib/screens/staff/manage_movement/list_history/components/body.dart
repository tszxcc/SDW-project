import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mhcs/bloc/staff/movement_bloc.dart';
import 'package:mhcs/helper/constant.dart';
import 'package:mhcs/helper/http_response.dart';
import 'package:mhcs/models/manage_movement/movement_model.dart';
import 'package:mhcs/public_components/empty_list.dart';
import 'package:mhcs/public_components/theme_spinner.dart';
import 'package:mhcs/screens/staff/manage_movement/list_history/components/history_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // Declare and initialize Movement Bloc
  MovementBloc movementBloc = MovementBloc();

  final PagingController<int, MovementModel> _pagingController =
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

      final response = await movementBloc.getListOfMovementHistories(userId);

      if (response.statusCode == HttpResponse.HTTP_OK) {
        List<MovementModel>? movementModel = response.data;
        // final isLastPage = movementModel!.length < pageSize;
        // if (isLastPage) {
        _pagingController.appendLastPage(movementModel!);
        // } else {
        //   final nextPageKey = start + movementModel.length;
        //   _pagingController.appendPage(movementModel, nextPageKey);
        // }
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
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5)
                ]),
            child: Column(
              children: [
                Text("Mohamad Mohsin Bin Ismail"),
                Text("001005030159"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                PagedSliverList<int, MovementModel>(
                  pagingController: _pagingController,
                  builderDelegate: PagedChildBuilderDelegate<MovementModel>(
                      firstPageProgressIndicatorBuilder: (context) {
                        return ThemeSpinner.spinner();
                      },
                      noItemsFoundIndicatorBuilder: (context) =>
                          const EmptyList(
                            text: "You don't have any histories yet.",
                            query: '',
                          ),
                      animateTransitions: true,
                      itemBuilder: (context, movementModel, index) =>
                          HistoryItem(movementModel)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
