class InserUserTest {
  String? uName;
  String? uNumber;
  int? uDecibel;
  String? uRisk;
  String? hoursListening;
  String? musicType;

  InserUserTest(
      {this.uName,
      this.uNumber,
      this.uDecibel,
      this.uRisk,
      this.hoursListening,
      this.musicType});

  InserUserTest.fromJson(Map<String, dynamic> json) {
    uName = json['u_name'];
    uNumber = json['u_number'];
    uDecibel = json['u_decibel'];
    uRisk = json['u_risk'];
    hoursListening = json['hours_listening'];
    musicType = json['music_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['u_name'] = uName;
    data['u_number'] = uNumber;
    data['u_decibel'] = uDecibel;
    data['u_risk'] = uRisk;
    data['hours_listening'] = hoursListening;
    data['music_type'] = musicType;
    return data;
  }
}
