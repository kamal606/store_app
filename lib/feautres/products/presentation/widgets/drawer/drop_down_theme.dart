import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/feautres/theme/domain/model/theme.dart';
import 'package:store_app/feautres/theme/presentation/bloc/theme_app/theme_app_bloc.dart';

import '../../../../../core/color/app_color.dart';

class CustomDropDownButtonThemeApp extends StatelessWidget {
  const CustomDropDownButtonThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeAppBloc, ThemeAppState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton(
              dropdownColor: AppColor.blue,
              items: [AppTheme.dark.name, AppTheme.light.name]
                  .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                        value: e,
                        child: Container(
                          alignment: Alignment.center,
                          height: 200.h,
                          width: 200.h,
                          color: AppColor.blue,
                          child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, i) {
                                return Text(e);
                              }),
                        ),
                      ))
                  .toList(),
              onChanged: (val) {
                if (val == AppTheme.dark.name) {
                  BlocProvider.of<ThemeAppBloc>(context)
                      .add(const ChangeThemeEvent(changeTheme: AppTheme.dark));
                }
                if (val == AppTheme.light.name) {
                  BlocProvider.of<ThemeAppBloc>(context)
                      .add(const ChangeThemeEvent(changeTheme: AppTheme.light));
                }
              }),
        );
      },
    );
  }
}
