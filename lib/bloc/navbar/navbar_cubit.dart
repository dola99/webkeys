import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navbar_state.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(NavbarInitial());
  static NavbarCubit get(BuildContext context) => BlocProvider.of(context);
  int selectedTabID = 0;

  navBarSelected(int tabId) {
    selectedTabID = tabId;
    emit(NavBarTabSelected());
  }
}
