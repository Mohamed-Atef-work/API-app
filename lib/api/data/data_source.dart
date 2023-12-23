import 'package:dio/dio.dart';
import 'model.dart';

abstract class BaseRemoteDataSource {
  Future<NasaModel?> getNasaApi();
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<NasaModel?> getNasaApi() async {
    print("-------------------------> BaseRemoteDataSource");
    var response = await Dio().get(
        "https://api.nasa.gov/planetary/apod?api_key=Mgdl8z03CVAVV8PCCKEzE3HfFflkNgLgG3voKeYd");
    return NasaModel.fromJson(response.data);
  }
}
