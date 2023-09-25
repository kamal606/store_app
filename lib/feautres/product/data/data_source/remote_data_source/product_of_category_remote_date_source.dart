import 'package:hive/hive.dart';
import 'package:store_app/core/utils/api_services.dart';
import 'package:store_app/feautres/product/data/data_source/local_data_source.dart/products_local_data_source.dart';
import 'package:store_app/feautres/product/data/model/product_model.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';

abstract class ProductOfCategoryRemoteDataSource {
  Future<List<ProductEntity>> getProductOfCategory();
}

class ProductOfCategoryRemoteDataSourceImpl
    extends ProductOfCategoryRemoteDataSource {
  final ApiService apiService;
  final ProductsLocalDataSourceImpl productsLocalDataSourceImpl;

  ProductOfCategoryRemoteDataSourceImpl({
    required this.apiService,
    required this.productsLocalDataSourceImpl,
  });

  @override
  Future<List<ProductEntity>> getProductOfCategory() async {
    final data = await apiService.get(endPoint: "products");

    List<ProductEntity> products = getProducts(data);
    await addProductToLocal(products);
    return products;
  }

//method add products to box in local storage
  Future<void> addProductToLocal(List<ProductEntity> products) async {
    Box box = await productsLocalDataSourceImpl.openBox();
    await productsLocalDataSourceImpl.addProducts(box, products);
  }

//method parse Map<String, dynamic> to  ProductEntity
  List<ProductEntity> getProducts(Map<String, dynamic> data) {
    List<ProductEntity> products = [];
    for (var item in data["products"]) {
      products.add(ProductModel.fromJson(item));
    }
    return products;
  }
}
