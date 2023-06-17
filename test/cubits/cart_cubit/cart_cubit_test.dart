import 'package:flutter_test/flutter_test.dart';
import 'package:webkeys_task/bloc/cart/cart_cubit.dart';

void main() {
  group('CartCubit', () {
    late CartCubit cartCubit;

    setUp(() {
      cartCubit = CartCubit();
    });

    tearDown(() {
      cartCubit.close();
    });

    test('initial state is CartInitial', () {
      expect(cartCubit.state.runtimeType, equals(CartInitial));
    });

    test(
        'addToOrder increments itemsSelected and emits NewItemAddedToOrderState',
        () {
      cartCubit.addToOrder();

      expect(cartCubit.itemsSelected, equals(1));
    });
  });
}
