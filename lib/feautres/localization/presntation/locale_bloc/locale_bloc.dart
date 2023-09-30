import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:store_app/feautres/localization/data/local_data_source/locale_local_data_source.dart';
import 'package:store_app/feautres/localization/domain/enum_locale.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final LocaleLocalDataSourceImpl localeLocalDataSourceImpl;
  LocaleBloc({required this.localeLocalDataSourceImpl})
      : super(LocaleInitial()) {
    on<LocaleEvent>((event, emit) async {
      if (event is CurrentLocaleEvent) {
        Box box = await localeLocalDataSourceImpl.openBox();
        final locale = await localeLocalDataSourceImpl.getLocale(box);
        emit(ChangeLocaleState(locale: language[locale]!));
      } else if (event is ChangeLocaleEvent) {
        Box box = await localeLocalDataSourceImpl.openBox();
        await localeLocalDataSourceImpl.addLocale(box, event.appLanguage);
        emit(ChangeLocaleState(locale: language[event.appLanguage]!));
      }
    });
  }
}
