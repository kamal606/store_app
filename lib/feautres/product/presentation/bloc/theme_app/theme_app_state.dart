part of 'theme_app_bloc.dart';

sealed class ThemeAppState extends Equatable {
  const ThemeAppState();

  @override
  List<Object> get props => [];
}

final class ThemeAppInitial extends ThemeAppState {}

final class ChangedThemeState extends ThemeAppState {
  final ThemeData changedTheme;

  const ChangedThemeState({required this.changedTheme});
  @override
  List<Object> get props => [changedTheme];
}
