import 'package:flutter_test/flutter_test.dart';
import 'package:webkeys_task/bloc/navbar/navbar_cubit.dart';

void main() {
  group('NavbarCubit', () {
    late NavbarCubit navbarCubit;

    setUp(() {
      navbarCubit = NavbarCubit();
    });

    tearDown(() {
      navbarCubit.close();
    });

    test('initial state is NavbarInitial', () {
      expect(navbarCubit.state, equals(NavbarInitial()));
    });

    test('navBarSelected updates selectedTabID and emits NavBarTabSelected',
        () {
      const tabId = 0;
      final expectedStates = [
        NavBarTabSelected(),
      ];
      expectLater(navbarCubit.stream, emitsInOrder(expectedStates));

      navbarCubit.navBarSelected(tabId);

      expect(navbarCubit.selectedTabID, equals(tabId));
    });
  });
}
