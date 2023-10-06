import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:store_app/feautres/cart/data/local_data_source/cart_local_data_source.dart';
import 'package:store_app/feautres/cart/domain/entities/cart_entity.dart';
import 'package:store_app/feautres/products/domain/entities/product_entity.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartLocalDataSourceImpl cartLocalDataSourceImpl;
  CartBloc({required this.cartLocalDataSourceImpl}) : super(CartLoading()) {
    on<CartEvent>((event, emit) async {
      //================ start app event ====================
      if (event is CartStartAppEvent) {
        emit(CartLoading());
        try {
          await Future.delayed(const Duration(milliseconds: 500));
          final Box box = await cartLocalDataSourceImpl.openBox();
          final getAllProduct = cartLocalDataSourceImpl.getAllCartProduct(box);

          emit(CartSuccess(
              cartEntity: CartEntity(listProductEntity: getAllProduct)));
        } on Exception {
          emit(const CartFailure(
              errorMessage: "There was an error when start cart"));
        }
      }
      //================ add to cart event ====================
      if (event is AddToCartEvent) {
        try {
          bool isAddToCart = (state as CartSuccess)
              .cartEntity
              .listProductEntity
              .contains(event.productEntity);
          if (!isAddToCart) {
            final Box box = await cartLocalDataSourceImpl.openBox();
            await cartLocalDataSourceImpl.addToCart(box, event.productEntity);
            emit(
              CartSuccess(
                cartEntity: CartEntity(
                  listProductEntity: List.from(
                      (state as CartSuccess).cartEntity.listProductEntity)
                    ..add(event.productEntity),
                ),
              ),
            );
          }
        } on Exception {
          emit(const CartFailure(
              errorMessage: "There was an error when add to cart"));
        }
      }
      //================ remove from cart event ====================
      if (event is RemoveFromCartEvent) {
        try {
          final Box box = await cartLocalDataSourceImpl.openBox();
          await cartLocalDataSourceImpl.removeFromCart(
              box, event.productEntity);
          emit(
            CartSuccess(
              cartEntity: CartEntity(
                listProductEntity: List.from(
                    (state as CartSuccess).cartEntity.listProductEntity)
                  ..remove(event.productEntity),
              ),
            ),
          );
        } on Exception {
          emit(const CartFailure(
              errorMessage: "There was an error when remove from cart"));
        }
      }
      //================ clear all from cart event ====================
      if (event is ClearAllFromCartEvent) {
        try {
          final Box box = await cartLocalDataSourceImpl.openBox();
          await cartLocalDataSourceImpl.clearAllCart(box);
          emit(
            CartSuccess(
              cartEntity: CartEntity(
                listProductEntity: List.from(
                    (state as CartSuccess).cartEntity.listProductEntity)
                  ..clear(),
              ),
            ),
          );
        } on Exception {
          emit(const CartFailure(
              errorMessage: "There was an error when clear cart"));
        }
      }
      //================ search by query event ====================
      if (event is SearchInCartEvent) {
        try {
          final Box box = await cartLocalDataSourceImpl.openBox();
          final allProducts = cartLocalDataSourceImpl.getAllCartProduct(box);
          List<ProductEntity> listProductFilter = allProducts.where((product) {
            final searchProduct = product.titleProduct.toLowerCase();
            final query = event.query.toLowerCase();
            return searchProduct.contains(query);
          }).toList();
          emit(
            CartSuccess(
              cartEntity: CartEntity(
                listProductEntity: listProductFilter,
              ),
            ),
          );
        } on Exception {
          emit(const CartFailure(
              errorMessage: "There was an error when filter cart"));
        }
      }
    });
  }
}
