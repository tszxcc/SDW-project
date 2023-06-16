class DependentModel {
  String? name;
  String? relationType;
  String? icNumber;
  int? age;
  String? gender;
  int? userId;
  String? createdAt;
  String? updatedAt;

  DependentModel(
      {this.name,
      this.relationType,
      this.icNumber,
      this.age,
      this.gender,
      this.userId,
      this.createdAt,
      this.updatedAt});

  DependentModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    relationType = json['relation_type'];
    icNumber = json['ic_number'];
    age = json['age'];
    gender = json['gender'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['relation_type'] = this.relationType;
    data['ic_number'] = this.icNumber;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
