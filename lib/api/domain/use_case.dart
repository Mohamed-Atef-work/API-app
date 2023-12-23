import 'domain_repository.dart';
import 'entity.dart';

class GetNasaApiUseCase {
  final NasaRepositoryDomain nasaRepositoryDomain;

  GetNasaApiUseCase(this.nasaRepositoryDomain);

  Future<NasaEntity?> call() async {
    print("-------------------------> GetNasaApiUseCase");
    return await nasaRepositoryDomain.getNasaApi();
  }
}
