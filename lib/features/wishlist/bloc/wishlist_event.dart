part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class WishlistInitialEvent extends WishlistEvent {}

class WishlistRemoveFromWhislistEvent extends WishlistEvent {
  final ProductDataModel productDataModel;

  WishlistRemoveFromWhislistEvent({required this.productDataModel});
}
