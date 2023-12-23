import 'package:api_project/api/data/data_repository.dart';
import 'package:api_project/api/data/data_source.dart';
import 'package:api_project/api/domain/domain_repository.dart';
import 'package:api_project/api/domain/use_case.dart';
import 'package:api_project/api/presentation/widgets/custom_fading_widget.dart';
import 'package:api_project/api/presentation/widgets/loading_widget.dart';
import 'package:api_project/api/presentation/widgets/nasa_view.dart';
import 'package:flutter/material.dart';

import '../domain/entity.dart';
import 'controller.dart';

class NasaScreen extends StatelessWidget {
  NasaScreen({super.key});

  late final BaseRemoteDataSource _dataSource = RemoteDataSource();
  late final NasaRepositoryDomain _repo = NasaRepositoryData(_dataSource);
  late final GetNasaApiUseCase _useCase = GetNasaApiUseCase(_repo);
  late final _controller = ApiController(_useCase);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: _appBar(),
      body: FutureBuilder<NasaEntity?>(
        future: _controller.getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const CustomFadingWidget(child: LoadingWidget());
          } else {
            var entity = snapshot.data;
            return NasaView(entity: entity);
          }
        },
      ),
    );
  }

  PreferredSizeWidget _appBar() => AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: const Text("Nasa Api"),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      );
}
