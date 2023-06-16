// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_scale_tap/flutter_scale_tap.dart';
// import 'package:mhcs/helper/constant.dart';
// import 'package:mhcs/models/manage_notification/notification_model.dart';
// import 'package:mhcs/screens/user/manage_notification/list_notification/list_notification_screen.dart';

// class NotificationItem extends StatelessWidget {
//   final NotificationModel notificationModel;
//   const NotificationItem(this.notificationModel, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return notificationItem();
//   }

//   ScaleTap notificationItem() {
//     return ScaleTap(
//     child: Container(
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5)
//           ]),
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Icon(
//             Icons.pin_drop,
//             color: kPrimaryColor,
//           ),
//           const SizedBox(width: 10),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 // Premise Name
//                 Text(
//                   notificationModel.title!,
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     color: kTextColor,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 // Premise Address
//                 Text(
//                   notificationModel.message!,
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     color: kTextColor,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 // Check-In time
//                 Text(
//                   notificationModel.createdAt!,
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     color: kTextGray,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
//   }
// }
