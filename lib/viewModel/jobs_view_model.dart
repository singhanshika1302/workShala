

import 'package:workshala/models/anshika_datamodelProfile.dart';
import 'package:workshala/models/anshika_datamodel_jobs.dart';
import 'package:workshala/models/anshika_Repository.dart';

class JobsViewModel {
  final _rep = JobsRepository();

  
  Future<List<JobsApiModel>> FetchJobsapi() async {
    final response = await _rep.FetchJobsapi();
    return response;
  }

  // Future<UserDetailModel> Fetchprofileapi(String authToken) async {
   // final response = await _rep.Fetchprofileapi(authToken);
   // return response;
  //}
}