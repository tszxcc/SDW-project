class UserModel {
  int? id;
  String? name;
  String? email;
  String? username;
  String? phoneNo;
  int? age;
  String? gender;
  String? address;
  String? ethnicity;
  String? icNumber;
  String? passportNumber;
  String? healthStatus;
  String? role;
  String? twoFactorConfirmedAt;
  String? profilePhotoPath;
  String? createdAt;
  String? updatedAt;
  String? profilePhotoUrl;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.username,
      this.phoneNo,
      this.age,
      this.gender,
      this.address,
      this.ethnicity,
      this.icNumber,
      this.passportNumber,
      this.healthStatus,
      this.role,
      this.twoFactorConfirmedAt,
      this.profilePhotoPath,
      this.createdAt,
      this.updatedAt,
      this.profilePhotoUrl});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    phoneNo = json['phone_no'];
    age = json['age'];
    gender = json['gender'];
    address = json['address'];
    ethnicity = json['ethnicity'];
    icNumber = json['ic_number'];
    passportNumber = json['passport_number'];
    healthStatus = json['health_status'];
    role = json['role'];
    twoFactorConfirmedAt = json['two_factor_confirmed_at'];
    profilePhotoPath = json['profile_photo_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    profilePhotoUrl = json['profile_photo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['username'] = this.username;
    data['phone_no'] = this.phoneNo;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['ethnicity'] = this.ethnicity;
    data['ic_number'] = this.icNumber;
    data['passport_number'] = this.passportNumber;
    data['health_status'] = this.healthStatus;
    data['role'] = this.role;
    data['two_factor_confirmed_at'] = this.twoFactorConfirmedAt;
    data['profile_photo_path'] = this.profilePhotoPath;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['profile_photo_url'] = this.profilePhotoUrl;
    return data;
  }
}
