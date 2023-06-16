class CovidInformationModel {
  int? id;
  String? topic;
  String? description;
  String? imagePath;
  String? createdAt;
  String? updatedAt;

  CovidInformationModel(
      {this.id,
      this.topic,
      this.description,
      this.imagePath,
      this.createdAt,
      this.updatedAt});

  CovidInformationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    topic = json['topic'];
    description = json['description'];
    imagePath = json['image_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['topic'] = this.topic;
    data['description'] = this.description;
    data['image_path'] = this.imagePath;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
