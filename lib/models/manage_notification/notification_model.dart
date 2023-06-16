class NotificationModel {
  String? title;
  String? message;
  String? category;
  String? updatedAt;
  String? createdAt;
  int? id;

  NotificationModel(
      {this.title,
      this.message,
      this.category,
      this.updatedAt,
      this.createdAt,
      this.id});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    message = json['message'];
    category = json['category'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['message'] = this.message;
    data['category'] = this.category;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
