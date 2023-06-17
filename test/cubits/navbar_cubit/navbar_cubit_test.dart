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

    test('navBarSelected updates selectedTabID and emits NavBarTabSelected',
        () {
      // Arrange
      const tabId = 1;
      const expectedStates = NavBarTabSelected;

      // Act
      navbarCubit.navBarSelected(tabId);

      // Assert
      expect(navbarCubit.state.runtimeType, equals(expectedStates));
      expect(navbarCubit.selectedTabID, equals(tabId));
    });
  });
}
