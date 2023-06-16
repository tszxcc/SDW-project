class CheckInDependentRequestModel {
  List<int>? dependents;

  CheckInDependentRequestModel({this.dependents});

  CheckInDependentRequestModel.fromJson(Map<String, dynamic> json) {
    dependents = json['dependents'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dependents'] = this.dependents;
    return data;
  }
}
