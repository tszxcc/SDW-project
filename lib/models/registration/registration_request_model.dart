class RegistrationRequestModel {
  String? email;
  String? username;
  String? name;
  String? phoneNo;
  String? age;
  String? gender;
  String? address;
  String? ethnicity;
  String? icNumber;
  String? password;

  RegistrationRequestModel(
      {this.email,
      this.username,
      this.name,
      this.phoneNo,
      this.age,
      this.gender,
      this.address,
      this.ethnicity,
      this.icNumber,
      this.password});

  RegistrationRequestModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
    name = json['name'];
    phoneNo = json['phone_no'];
    age = json['age'];
    gender = json['gender'];
    address = json['address'];
    ethnicity = json['ethnicity'];
    icNumber = json['ic_number'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['username'] = this.username;
    data['name'] = this.name;
    data['phone_no'] = this.phoneNo;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['ethnicity'] = this.ethnicity;
    data['ic_number'] = this.icNumber;
    data['password'] = this.password;
    return data;
  }
}
