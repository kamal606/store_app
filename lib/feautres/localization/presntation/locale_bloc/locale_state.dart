part of 'locale_bloc.dart';

sealed class LocaleState extends Equatable {
  const LocaleState();

  @override
  List<Object> get props => [];
}

class LocaleInitial extends LocaleState {}

class ChangeLocaleState extends LocaleState {
  final Locale locale;

  const ChangeLocaleState({required this.locale});
  @override
  List<Object> get props => [locale];
}
