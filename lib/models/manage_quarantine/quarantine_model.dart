class QuarantineModel {
  int? id;
  int? movementHistoryId;
  int? userId;
  String? reason;
  String? remark;
  String? dateIn;
  String? dateOut;
  String? symptoms;
  String? dateCreated;
  String? dateUpdated;
  int? quarantineCenterId;
  List<QuarantineTimelines>? quarantineTimelines;

  QuarantineModel(
      {this.id,
      this.movementHistoryId,
      this.userId,
      this.reason,
      this.remark,
      this.dateIn,
      this.dateOut,
      this.symptoms,
      this.dateCreated,
      this.dateUpdated,
      this.quarantineCenterId,
      this.quarantineTimelines});

  QuarantineModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    movementHistoryId = json['movement_history_id'];
    userId = json['user_id'];
    reason = json['reason'];
    remark = json['remark'];
    dateIn = json['date_in'];
    dateOut = json['date_out'];
    symptoms = json['symptoms'];
    dateCreated = json['date_created'];
    dateUpdated = json['date_updated'];
    quarantineCenterId = json['quarantine_center_id'];
    if (json['quarantine_timelines'] != null) {
      quarantineTimelines = <QuarantineTimelines>[];
      json['quarantine_timelines'].forEach((v) {
        quarantineTimelines!.add(new QuarantineTimelines.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['movement_history_id'] = this.movementHistoryId;
    data['user_id'] = this.userId;
    data['reason'] = this.reason;
    data['remark'] = this.remark;
    data['date_in'] = this.dateIn;
    data['date_out'] = this.dateOut;
    data['symptoms'] = this.symptoms;
    data['date_created'] = this.dateCreated;
    data['date_updated'] = this.dateUpdated;
    data['quarantine_center_id'] = this.quarantineCenterId;
    if (this.quarantineTimelines != null) {
      data['quarantine_timelines'] =
          this.quarantineTimelines!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QuarantineTimelines {
  int? id;
  int? quarantineCenterId;
  int? patientId;
  String? status;
  String? date;
  String? dateCreated;
  String? dateUpdate;

  QuarantineTimelines(
      {this.id,
      this.quarantineCenterId,
      this.patientId,
      this.status,
      this.date,
      this.dateCreated,
      this.dateUpdate});

  QuarantineTimelines.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quarantineCenterId = json['quarantine_center_id'];
    patientId = json['patient_id'];
    status = json['status'];
    date = json['date'];
    dateCreated = json['date_created'];
    dateUpdate = json['date_update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quarantine_center_id'] = this.quarantineCenterId;
    data['patient_id'] = this.patientId;
    data['status'] = this.status;
    data['date'] = this.date;
    data['date_created'] = this.dateCreated;
    data['date_update'] = this.dateUpdate;
    return data;
  }
}