import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/feautres/products/presentation/widgets/drawer/settings/dialog_langage_and_theme.dart';
import 'package:store_app/feautres/localization/domain/enum_locale.dart';
import 'package:store_app/feautres/localization/presntation/locale_bloc/locale_bloc.dart';
import 'package:store_app/feautres/products/data/data_source/local_data_source.dart/save_check__lang_settings.dart';
import 'package:store_app/generated/l10n.dart';

Future<void> methodChooseLanguage(BuildContext context) async {
  await customLanguageAndTheme(
      isEnglish: CheckLanguageSettings.getLanguage(),
      titleChoose1: S.of(context).arabic,
      titleChoose2: S.of(context).english,
      context: context,
      onPressedChoose1: () async {
        if (CheckLanguageSettings.getLanguage() == false) {
          BlocProvider.of<AppLocaleBloc>(context)
              .add(const ChangeLocaleEvent(appLanguage: AppLocale.arabic));
          await CheckLanguageSettings.putLanguage();
        }
        if (!context.mounted) return;
        context.pop();
      },
      onPressedChoose2: () async {
        if (CheckLanguageSettings.getLanguage() == true) {
          BlocProvider.of<AppLocaleBloc>(context)
              .add(const ChangeLocaleEvent(appLanguage: AppLocale.english));
          await CheckLanguageSettings.deleteLanguage();
        }
        if (!context.mounted) return;
        context.pop();
      },
      title: S.of(context).chooseLang);
}
