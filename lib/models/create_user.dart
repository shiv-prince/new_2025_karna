class CreateUser {
  String? name;
  String? cNumber;
  int? age;
  String? gender;
  String? domain;
  String? profession;

  CreateUser(
      {this.name,
      this.cNumber,
      this.age,
      this.gender,
      this.domain,
      this.profession});

  CreateUser.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    cNumber = json['c_number'];
    age = json['age'];
    gender = json['gender'];
    domain = json['domain'];
    profession = json['profession'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['c_number'] = cNumber;
    data['age'] = age;
    data['gender'] = gender;
    data['domain'] = domain;
    data['profession'] = profession;
    return data;
  }
}
