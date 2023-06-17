part of 'cart_cubit.dart';

@immutable
abstract class CartState extends Equatable {}

class CartInitial extends CartState {
  @override
  List<Object?> get props => [];
}

class NewItemAddedToOrderState extends CartState {
  @override
  List<Object?> get props => [];
}
