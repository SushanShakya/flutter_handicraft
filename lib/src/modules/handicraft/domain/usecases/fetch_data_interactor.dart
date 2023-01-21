// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:handicraft/src/core/usecase/asyncusecase.dart';
import 'package:handicraft/src/modules/handicraft/data/repo/interface/data_repo.dart';
import 'package:handicraft/src/modules/handicraft/domain/entities/product.dart';

class FetchDataInteractor extends AsyncUsecase<List<Product>, NoParam> {
  final DataRepo repo;

  FetchDataInteractor({
    required this.repo,
  });

  @override
  Future<List<Product>> call(NoParam param) async {
    return await repo.fetchArtList();
  }
}
