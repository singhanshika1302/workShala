class UserDetailModel {
  String? id;
  String? userId;
  String? name;
  List<String>? skills;
  List<String>? preferences;
  List<String>? workLocation;
  int? v;

  UserDetailModel({
    this.id,
    this.userId,
    this.name,
    this.skills,
    this.preferences,
    this.workLocation,
    this.v,
  });

  UserDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    userId = json['userId'];
    name = json['name'];
    skills = List<String>.from(json['skills'] ?? []);
    preferences = List<String>.from(json['preferences'] ?? []);
    workLocation = List<String>.from(json['workLocation'] ?? []);
    v = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = id;
    data['userId'] = userId;
    data['name'] = name;
    data['skills'] = skills ?? [];
    data['preferences'] = preferences ?? [];
    data['workLocation'] = workLocation ?? [];
    data['__v'] = v;
    return data;
  }
}