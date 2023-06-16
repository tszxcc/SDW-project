import 'package:mhcs/models/manage_movement/premise_model.dart';

class MovementModel {
  int? id;
  int? userId;
  int? premiseId;
  String? checkInTime;
  String? checkOutTime;
  PremiseModel? premise;

  MovementModel(
      {this.id,
      this.userId,
      this.premiseId,
      this.checkInTime,
      this.checkOutTime,
      this.premise});

  MovementModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    premiseId = json['premise_id'];
    checkInTime = json['check_in_time'];
    checkOutTime = json['check_out_time'];
    premise = json['premise'] != null
        ? new PremiseModel.fromJson(json['premise'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['premise_id'] = this.premiseId;
    data['check_in_time'] = this.checkInTime;
    data['check_out_time'] = this.checkOutTime;
    if (this.premise != null) {
      data['premise'] = this.premise!.toJson();
    }
    return data;
  }
}
