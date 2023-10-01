import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_app/feautres/theme/presentation/bloc/theme_app/theme_app_bloc.dart';

import '../../../../../core/color/app_color.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({super.key, this.onChanged, required this.list});
  final Function(String?)? onChanged;
  final List<dynamic> list;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeBloc, AppThemeState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton(
              dropdownColor: AppColor.blue,
              items: list
                  .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                        value: e.name,
                        child: Container(
                          alignment: Alignment.center,
                          height: 200.h,
                          width: 200.h,
                          color: AppColor.blue,
                          child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, i) {
                                return Text(e.name);
                              }),
                        ),
                      ))
                  .toList(),
              onChanged: onChanged),
        );
      },
    );
  }
}
