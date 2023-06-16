class PremiseModel {
  int? id;
  String? name;
  String? address;
  String? status;

  PremiseModel({
    this.id,
    this.name,
    this.address,
    this.status,
  });

  PremiseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['status'] = this.status;
    return data;
  }
}
