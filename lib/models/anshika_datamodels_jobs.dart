class JobsApiModel {
  List<Null>? applicants;
  String? sId;
  String? companyName;
  String? jobType;
  String? description;
  String? startDate;
  String? stipend;
  String? duration;
  String? applyBy;
  String? imageUrl;

  JobsApiModel({
    this.applicants,
    this.sId,
    this.companyName,
    this.jobType,
    this.description,
    this.startDate,
    this.stipend,
    this.duration,
    this.applyBy,
    this.imageUrl,
  });

  JobsApiModel.fromJson(Map<String, dynamic> json) {
    if (json['applicants'] != null) {
      applicants = <Null>[];
      json['applicants'].forEach((v) {
        applicants!.add(v);
      });
    }
    sId = json['_id'];
    companyName = json['companyName'];
    jobType = json['jobType'];
    description = json['description'];
    startDate = json['startDate'];
    stipend = json['stipend'];
    duration = json['duration'];
    applyBy = json['applyBy'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (applicants != null) {
      data['applicants'] = applicants!.map((v) => v).toList();
    }
    data['_id'] = sId;
    data['companyName'] = companyName;
    data['jobType'] = jobType;
    data['description'] = description;
    data['startDate'] = startDate;
    data['stipend'] = stipend;
    data['duration'] = duration;
    data['applyBy'] = applyBy;
    data['imageUrl'] = imageUrl;
    return data;
  }
}