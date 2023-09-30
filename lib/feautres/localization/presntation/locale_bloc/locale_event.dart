part of 'locale_bloc.dart';

sealed class LocaleEvent extends Equatable {
  const LocaleEvent();

  @override
  List<Object> get props => [];
}

class CurrentLocaleEvent extends LocaleEvent {}

class ChangeLocaleEvent extends LocaleEvent {
  final AppLanguage appLanguage;

  const ChangeLocaleEvent({required this.appLanguage});
  @override
  List<Object> get props => [appLanguage];
}
