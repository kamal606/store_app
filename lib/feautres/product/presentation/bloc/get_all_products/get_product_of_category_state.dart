part of 'get_product_of_category_bloc.dart';

sealed class AllProductsState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class AllProductsStateInitial extends AllProductsState {
  @override
  List<Object?> get props => [];
}

final class AllProductsStateLoading extends AllProductsState {
  @override
  List<Object?> get props => [];
}

final class AllProductsStateSuccess extends AllProductsState {
  final List<ProductEntity> products;

  AllProductsStateSuccess({required this.products});
  @override
  List<Object?> get props => [products];
}

final class AllProductsStateFailure extends AllProductsState {
  final String errMessage;

  AllProductsStateFailure({required this.errMessage});
  @override
  List<Object?> get props => [errMessage];
}
