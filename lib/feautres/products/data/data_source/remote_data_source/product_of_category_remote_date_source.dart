import 'package:hive/hive.dart';
import '../../../../../core/utils/api_services.dart';
import '../local_data_source.dart/products_local_data_source.dart';
import '../../model/product_model.dart';
import '../../../domain/entities/product_entity.dart';

abstract class AllProductsRemoteDataSource {
  Future<List<ProductEntity>> getAllProducts();
}

class AllProductsRemoteDataSourceImpl extends AllProductsRemoteDataSource {
  final ApiService apiService;
  final AllProductsLocalDataSourceImpl productsLocalDataSourceImpl;

  AllProductsRemoteDataSourceImpl({
    required this.apiService,
    required this.productsLocalDataSourceImpl,
  });

  @override
  Future<List<ProductEntity>> getAllProducts() async {
    final data = await apiService.get(endPoint: "products");

    List<ProductEntity> products = getProducts(data);
    await addAllProductsToLocal(products);
    return products;
  }

//method add products to box in local storage
  Future<void> addAllProductsToLocal(List<ProductEntity> products) async {
    Box box = await productsLocalDataSourceImpl.openBox();
    await productsLocalDataSourceImpl.addAllProducts(box, products);
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
