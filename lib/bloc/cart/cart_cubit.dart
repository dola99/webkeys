import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  static CartCubit get(BuildContext context) => BlocProvider.of(context);

  int itemsSelected = 0;

  addToOrder() {
    itemsSelected++;
    emit(NewItemAddedToOrderState());
  }
}
