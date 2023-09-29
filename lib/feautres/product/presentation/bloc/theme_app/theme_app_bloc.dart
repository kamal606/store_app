import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:store_app/core/utils/theme.dart';
import 'package:store_app/feautres/product/data/data_source/local_data_source.dart/theme_local_data_source.dart';

part 'theme_app_event.dart';
part 'theme_app_state.dart';

class ThemeAppBloc extends Bloc<ThemeAppEvent, ThemeAppState> {
  final ThemeLocalDataSourceImpl themeLocalDataSourceImpl;
  ThemeAppBloc({required this.themeLocalDataSourceImpl})
      : super(ThemeAppInitial()) {
    on<ThemeAppEvent>((event, emit) async {
      if (event is CurrentThemeEvent) {
        Box box = await themeLocalDataSourceImpl.openBox();
        final themeBox = await themeLocalDataSourceImpl.getTheme(box);
        emit(ChangedThemeState(changedTheme: theme[themeBox]!));
      }
      if (event is ChangeThemeEvent) {
        Box box = await themeLocalDataSourceImpl.openBox();
        themeLocalDataSourceImpl.addTheme(box, event.changeTheme);
        emit(ChangedThemeState(changedTheme: theme[event.changeTheme]!));
      }
    });
  }
}
