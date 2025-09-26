import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_cart/data/wishlist_items.dart';
import 'package:bloc_cart/features/home/models/home_product_data_model.dart';
import 'package:flutter/material.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(wishlistInitialEvent);
    on<WishlistRemoveFromWhislistEvent>(wishlistRemoveFromWhislistEvent);
  }

  FutureOr<void> wishlistInitialEvent(
    WishlistInitialEvent event,
    Emitter<WishlistState> emit,
  ) {
    emit(WishlistSucessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishlistRemoveFromWhislistEvent(
    WishlistRemoveFromWhislistEvent event,
    Emitter<WishlistState> emit,
  ) {
    wishlistItems.remove(event.productDataModel);
    emit(WishlistSucessState(wishlistItems: wishlistItems));
  }
}
