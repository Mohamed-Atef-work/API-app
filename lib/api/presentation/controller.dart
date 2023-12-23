import 'package:api_project/api/domain/entity.dart';

import '../domain/use_case.dart';

class ApiController {
  final GetNasaApiUseCase getNasaApiUseCase;

  ApiController(this.getNasaApiUseCase);

  Future<NasaEntity?> getData() async => getNasaApiUseCase.call();

  //Future<AutoGenerate> getRandomAya() async {
  // var response =
  //     await Dio().get("https://api.quran.com/api/v3/chapters/1/verses/1");
  // Map<String, dynamic> apiMap = response.data;
  // return AutoGenerate.fromJson(apiMap);
  //}
}
