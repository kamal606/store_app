import 'package:store_app/core/utils/api_services.dart';
import 'package:store_app/feautres/products/data/data_source/local_data_source.dart/products_of_category_local.dart';
import 'package:store_app/feautres/products/data/model/product_model.dart';
import 'package:store_app/feautres/products/domain/entities/product_entity.dart';

abstract class GetProductsOfCategoryRemoteDataSource {
  Future<List<ProductEntity>> getProductsOfCategory(String nameCategory);
}

class GetProductsOfCategoryRemoteDataSourceImpl
    implements GetProductsOfCategoryRemoteDataSource {
  final ApiService apiService;
  final GetProductsOfCategoryLocalDataSourceImpl gerProductsLocal;
  GetProductsOfCategoryRemoteDataSourceImpl({
    required this.apiService,
    required this.gerProductsLocal,
  });
  @override
  Future<List<ProductEntity>> getProductsOfCategory(String nameCategory) async {
    final data =
        await apiService.get(endPoint: "products/category/$nameCategory");
//===================== method get from api =======================
    List<ProductEntity> listProducts = _getProductFromApi(data);
    //===================== method save local =======================
    await _saveProductsInLocal(nameCategory, listProducts);
    return listProducts;
  }

//===================== method save local =======================
  Future<void> _saveProductsInLocal(
      String nameCategory, List<ProductEntity> listProducts) async {
    final box = await gerProductsLocal.openBox();
    await gerProductsLocal.addProducts(box, listProducts);
  }

//===================== method get from api =======================
  List<ProductEntity> _getProductFromApi(Map<String, dynamic> data) {
    List<ProductEntity> listProducts = [];

    for (var item in data["products"]) {
      listProducts.add(ProductModel.fromJson(item));
    }
    return listProducts;
  }
}
