class RequestQuarantineModel {
  int? quarantineCenterId;
  String? remark;

  RequestQuarantineModel({this.quarantineCenterId, this.remark});

  RequestQuarantineModel.fromJson(Map<String, dynamic> json) {
    quarantineCenterId = json['quarantine_center_id'];
    remark = json['remark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quarantine_center_id'] = this.quarantineCenterId;
    data['remark'] = this.remark;
    return data;
  }
}