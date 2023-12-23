import '../domain/domain_repository.dart';
import '../domain/entity.dart';
import 'data_source.dart';

class NasaRepositoryData implements NasaRepositoryDomain {
  final BaseRemoteDataSource baseRemoteDataSource;

  NasaRepositoryData(this.baseRemoteDataSource);

  @override
  Future<NasaEntity?> getNasaApi() async {
    print("-------------------------> NasaRepositoryData");
    return await baseRemoteDataSource.getNasaApi();
  }
}
