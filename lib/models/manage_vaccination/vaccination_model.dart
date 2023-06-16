class VaccinationModel {
  int? id;
  int? userId;
  int? dependantId;
  String? createdAt;
  String? updatedAt;

  VaccinationModel(
      {this.id,
      this.userId,
      this.dependantId,
      this.createdAt,
      this.updatedAt});

  VaccinationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    dependantId = json['dependant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['dependant_id'] = this.dependantId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
