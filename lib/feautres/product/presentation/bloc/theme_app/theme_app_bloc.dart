import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/utils/theme.dart';

part 'theme_app_event.dart';
part 'theme_app_state.dart';

class ThemeAppBloc extends Bloc<ThemeAppEvent, ThemeAppState> {
  ThemeAppBloc() : super(ThemeAppInitial()) {
    on<ThemeAppEvent>((event, emit) {
      if (event is CurrentThemeEvent) {
        final themeDefault = AppTheme.values.first;
        emit(ChangedThemeState(changedTheme: theme[themeDefault]!));
      }
      if (event is ChangeThemeEvent) {
        emit(ChangedThemeState(changedTheme: theme[event.changeTheme]!));
      }
    });
  }
}
