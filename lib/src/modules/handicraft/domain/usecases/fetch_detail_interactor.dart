// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:handicraft/src/core/usecase/asyncusecase.dart';
import 'package:handicraft/src/modules/handicraft/data/repo/interface/data_repo.dart';
import 'package:handicraft/src/modules/handicraft/domain/entities/product.dart';

class FetchDetailInteractor extends AsyncUsecase<Product, int> {
  final DataRepo repo;
  FetchDetailInteractor({
    required this.repo,
  });

  @override
  Future<Product> call(int param) async {
    return await repo.fetchArtDetail(param);
  }
}
