import 'package:api_project/api/model.dart';
import 'package:dio/dio.dart';

class ApiController
{

  Future<NasaApiModel>getData()
  async {
    var response = await Dio().get("https://api.nasa.gov/planetary/apod?api_key=Mgdl8z03CVAVV8PCCKEzE3HfFflkNgLgG3voKeYd");
    Map<String, dynamic> apiMap  = response.data;
    return NasaApiModel.fromJson(apiMap);
    //print(model.title.toString());
  }

  Future<AutoGenerate>getRandomAya()
  async {
    var response = await Dio().get(
        "https://api.quran.com/api/v3/chapters/1/verses/1");
    Map<String, dynamic> apiMap = response.data;
    return AutoGenerate.fromJson(apiMap);
  }}