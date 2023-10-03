import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:store_app/feautres/theme/domain/model/theme.dart';

import '../../../../theme/data/local_data_source/theme_local_data_source.dart';

part 'theme_app_event.dart';
part 'theme_app_state.dart';

class AppThemeBloc extends Bloc<ThemeAppEvent, AppThemeState> {
  final ThemeLocalDataSourceImpl themeLocalDataSourceImpl;
  AppThemeBloc({required this.themeLocalDataSourceImpl})
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