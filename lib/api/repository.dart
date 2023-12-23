import 'data/data_source.dart';
import 'domain/domain_repository.dart';
import 'domain/entity.dart';

class NasaRepositoryData implements NasaRepositoryDomain {
  late final BaseRemoteDataSource baseRemoteDataSource;

  NasaRepositoryData(this.baseRemoteDataSource);

  @override
  Future<NasaEntity?> getNasaApi() async {
    print("-------------------------> NasaRepositoryData");
    return await baseRemoteDataSource.getNasaApi();
  }
}
