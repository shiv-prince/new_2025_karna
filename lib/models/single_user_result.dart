class SingleUserTestResult {
  int? status;
  String? message;
  List<Data>? data;

  SingleUserTestResult({this.status, this.message, this.data});

  SingleUserTestResult.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name;
  int? contactNumber;
  int? age;
  String? domain;
  String? risk;
  int? dbValue;

  Data(
      {this.name,
      this.contactNumber,
      this.age,
      this.domain,
      this.risk,
      this.dbValue});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contactNumber = json['contact_number'];
    age = json['age'];
    domain = json['domain'];
    risk = json['risk'];
    dbValue = json['db_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['contact_number'] = contactNumber;
    data['age'] = age;
    data['domain'] = domain;
    data['risk'] = risk;
    data['db_value'] = dbValue;
    return data;
  }
}
