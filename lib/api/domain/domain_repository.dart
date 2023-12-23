import 'entity.dart';

abstract class NasaRepositoryDomain {
  Future<NasaEntity?> getNasaApi();
}
