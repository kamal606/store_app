import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/color/app_color.dart';

import '../../feautres/product/presentation/bloc/status_internet/status_internet_bloc.dart';
import '../fonts/app_font.dart';

class CustomInternetStatus extends StatelessWidget {
  const CustomInternetStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: BlocBuilder<StatusInternetBloc, StatusInternetState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          color: state is StatusInternetOffline
              ? AppColor.erorr
              : state is StatusInternetOnline
                  ? Colors.transparent
                  : null,
          height: 20.h,
          child: Text(
            state is StatusInternetOffline
                ? state.message
                : state is StatusInternetOnline
                    ? ""
                    : "",
            style: AppFonts.regular_11.copyWith(color: AppColor.white),
          ),
        );
      },
    ));
  }
}
