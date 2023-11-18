

import 'package:workshala/models/anshika_Repository.dart';
import 'package:workshala/models/anshika_datamodels_jobs.dart';

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