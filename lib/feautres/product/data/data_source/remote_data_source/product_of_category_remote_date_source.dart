import 'package:store_app/core/utils/api_services.dart';
import 'package:store_app/feautres/product/data/model/product_model.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';

abstract class ProductOfCategoryRemoteDataSource {
  Future<List<ProductEntity>> getProductOfCategory();
}

class ProductOfCategoryRemoteDataSourceImpl
    extends ProductOfCategoryRemoteDataSource {
  final ApiService apiService;

  ProductOfCategoryRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<ProductEntity>> getProductOfCategory() async {
    final data = await apiService.get(endPoint: "products");
    List<ProductEntity> products = getProducts(data);
    return products;
  }

  List<ProductEntity> getProducts(Map<String, dynamic> data) {
    List<ProductEntity> products = [];
    for (var item in data["products"]) {
      products.add(ProductModel.fromJson(item));
    }
    return products;
  }
}
