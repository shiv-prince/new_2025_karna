class GetUserResponse {
  int? status;
  String? message;
  List<Data>? data;

  GetUserResponse({this.status, this.message, this.data});

  GetUserResponse.fromJson(Map<String, dynamic> json) {
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
  int? uAge;
  String? domain;

  Data({this.name, this.contactNumber, this.uAge, this.domain});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contactNumber = json['contact_number'];
    uAge = json['u_age'];
    domain = json['domain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['contact_number'] = contactNumber;
    data['u_age'] = uAge;
    data['domain'] = domain;
    return data;
  }
}
