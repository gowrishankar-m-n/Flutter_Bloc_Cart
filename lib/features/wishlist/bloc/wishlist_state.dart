part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistState {}

abstract class WishlistActionState extends WishlistState {}

class WishlistInitial extends WishlistState {}

class WishlistSucessState extends WishlistState {
  final List<ProductDataModel> wishlistItems;

  WishlistSucessState({required this.wishlistItems});
}
