import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:store_app/feautres/favorite/data/local_data_source/favorite_local_data_source.dart';
import 'package:store_app/feautres/favorite/domain/entities/favorite_entity.dart';
import 'package:store_app/feautres/products/domain/entities/product_entity.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final FavoriteLocalDataSourceImpl favoriteLocalDataSourceImpl;
  FavoriteBloc({required this.favoriteLocalDataSourceImpl})
      : super(FavoriteInitial()) {
    on<FavoriteEvent>((event, emit) async {
      //================== start event =========================
      if (event is FavoriteStartAppEvent) {
        emit(FavoriteLoading());
        try {
          await Future.delayed(const Duration(seconds: 1));
          Box box = await favoriteLocalDataSourceImpl.openBox();
          List<ProductEntity> getProducts =
              favoriteLocalDataSourceImpl.getProducts(box);

          emit(FavoriteSuccess(
              favoriteEntity: FavoriteEntity(listProductEntity: getProducts)));
        } on Exception {
          emit(const FavoriteFailure(
              errorMessage: "There was an error in cache products"));
        }
      }
      //================== add Favorite event =========================
      if (event is AddFavoriteEvent) {
        try {
          bool isProductAlreadyAdded = (state as FavoriteSuccess)
              .favoriteEntity
              .listProductEntity
              .contains(event.productEntity);
          if (!isProductAlreadyAdded) {
            Box box = await favoriteLocalDataSourceImpl.openBox();
            await favoriteLocalDataSourceImpl.addProduct(
                box, event.productEntity);

            emit(
              FavoriteSuccess(
                favoriteEntity: FavoriteEntity(
                  listProductEntity: List.from((state as FavoriteSuccess)
                      .favoriteEntity
                      .listProductEntity)
                    ..add(event.productEntity),
                ),
              ),
            );
          }
        } on Exception {
          emit(const FavoriteFailure(
              errorMessage: "There was an error when add products"));
        }
      }
      //================== remove Favorite event =========================
      if (event is RemoveFavoriteEvent) {
        try {
          Box box = await favoriteLocalDataSourceImpl.openBox();
          await favoriteLocalDataSourceImpl.removeProduct(
              box, event.productEntity);

          emit(
            FavoriteSuccess(
              favoriteEntity: FavoriteEntity(
                listProductEntity: List.from(
                    (state as FavoriteSuccess).favoriteEntity.listProductEntity)
                  ..remove(event.productEntity),
              ),
            ),
          );
        } on Exception {
          emit(const FavoriteFailure(
              errorMessage: "There was an error when remove products"));
        }
      }
      //================== remove all Favorite event =========================
      if (event is RemoveAllFavoriteEvent) {
        try {
          Box box = await favoriteLocalDataSourceImpl.openBox();
          await favoriteLocalDataSourceImpl.removeAllProduct(box);

          emit(
            FavoriteSuccess(
              favoriteEntity: FavoriteEntity(
                listProductEntity: List.from(
                    (state as FavoriteSuccess).favoriteEntity.listProductEntity)
                  ..clear(),
              ),
            ),
          );
        } on Exception {
          emit(const FavoriteFailure(
              errorMessage: "There was an error when clear products"));
        }
      }
    });
  }
}
