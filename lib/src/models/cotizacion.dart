import 'dart:convert';

class Profile {
  int id;
  String vencimiento;
  int tcclienteid;
  int tcagenteId;

  Profile(
      {this.id = 0,
      required this.vencimiento,
      required this.tcclienteid,
      required this.tcagenteId});

  factory Profile.fromJson(Map<String, dynamic> map) {
    return Profile(
        id: map["id"],
        vencimiento: map["vencimiento"],
        tcclienteid: map["tcclienteid"],
        tcagenteId: map["tcagenteId"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "vencimiento": vencimiento,
      "tcclienteid": tcclienteid,
      "tcagenteId": tcagenteId
    };
  }

  @override
  String toString() {
    return 'Profile{id: $id, name: $vencimiento, email: $tcclienteid, age: $tcagenteId}';
  }
}

List<Profile> profileFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Profile>.from(data.map((item) => Profile.fromJson(item)));
}

String profileToJson(Profile data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
