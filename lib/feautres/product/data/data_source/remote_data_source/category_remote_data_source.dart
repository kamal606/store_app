import 'package:store_app/core/constant/hive_const.dart';
import 'package:store_app/core/function/save_data.dart';
import 'package:store_app/core/utils/api_services.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryEntity>> getCategory();
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final ApiService apiService;
  const CategoryRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<CategoryEntity>> getCategory() async {
    final data = await apiService.getCategory(endPoint: "products/categories");

    List<CategoryEntity> categories = _getCategoryList(data);
    //save data in hive local
    saveDataLocal(categories, AppHive.categoryBox);
    //return List of category
    return categories;
  }

// method to parse data from list of string to list of category entity
  List<CategoryEntity> _getCategoryList(List<String> data) {
    List<CategoryEntity> categories = [];
    for (var category in data) {
      categories.add(CategoryEntity(categoryName: category));
    }
    return categories;
  }
}
