import '../../../domain/entities/product.dart';

abstract class DataRepo {
  Future<List<Product>> fetchArtList();
  Future<Product> fetchArtDetail(int id);
}
