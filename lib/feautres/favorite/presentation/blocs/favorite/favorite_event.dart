part of 'favorite_bloc.dart';

sealed class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];
}

class FavoriteStartAppEvent extends FavoriteEvent {}

class AddFavoriteEvent extends FavoriteEvent {
  final ProductEntity productEntity;

  const AddFavoriteEvent({required this.productEntity});
  @override
  List<Object> get props => [productEntity];
}

class RemoveFavoriteEvent extends FavoriteEvent {
  final ProductEntity productEntity;

  const RemoveFavoriteEvent({required this.productEntity});
  @override
  List<Object> get props => [productEntity];
}

class RemoveAllFavoriteEvent extends FavoriteEvent {
  @override
  List<Object> get props => [];
}
