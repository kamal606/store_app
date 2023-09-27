part of 'get_product_of_category_bloc.dart';

@immutable
sealed class GetProductOfCategoryState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class GetProductOfCategoryInitial extends GetProductOfCategoryState {
  @override
  List<Object?> get props => [];
}

final class GetProductOfCategoryLoading extends GetProductOfCategoryState {
  @override
  List<Object?> get props => [];
}

final class GetProductOfCategorySuccess extends GetProductOfCategoryState {
  final List<ProductEntity> products;

  GetProductOfCategorySuccess({required this.products});
  @override
  List<Object?> get props => [products];
}

final class GetProductOfCategoryFailure extends GetProductOfCategoryState {
  final String errMessage;

  GetProductOfCategoryFailure({required this.errMessage});
  @override
  List<Object?> get props => [errMessage];
}
