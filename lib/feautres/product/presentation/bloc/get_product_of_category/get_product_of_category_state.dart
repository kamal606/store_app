part of 'get_product_of_category_bloc.dart';

@immutable
sealed class GetProductOfCategoryState {}

final class GetProductOfCategoryInitial extends GetProductOfCategoryState {}

final class GetProductOfCategoryLoading extends GetProductOfCategoryState {}

final class GetProductOfCategorySuccess extends GetProductOfCategoryState {
  final List<ProductEntity> products;

  GetProductOfCategorySuccess({required this.products});
}

final class GetProductOfCategoryFailure extends GetProductOfCategoryState {
  final String errMessage;

  GetProductOfCategoryFailure({required this.errMessage});
}
