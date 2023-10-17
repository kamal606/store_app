import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/toast_flutter.dart';
import 'package:store_app/feautres/auth/presentation/bloc/image_user_bloc/image_user_put_file/image_user_put_file_bloc.dart';
import 'package:store_app/feautres/theme/domain/model/theme.dart';
import 'package:store_app/feautres/theme/presentation/bloc/theme_app/theme_app_bloc.dart';

class SectionImageProfileView extends StatelessWidget {
  const SectionImageProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ImageUserPutFileBloc, ImageUserPutFileState>(
      listener: (context, stateImage) {
        if (stateImage is ImageUserPutFileFailure) {
          toast(message: stateImage.errorMessage, color: AppColor.erorr);
        }
        if (stateImage is ImageUserPutFileSuccess) {
          toast(message: "Successfull Add Image", color: AppColor.jGDark);
        }
      },
      builder: (context, stateImage) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                gradient: AppColor.linearGradient(),
              ),
            ),
            BlocBuilder<AppThemeBloc, AppThemeState>(
              builder: (context, state) {
                final Color checkTheme =
                    (state as ChangedThemeState).changedTheme ==
                            theme[AppTheme.dark]
                        ? AppColor.darkTheme
                        : AppColor.background;
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: checkTheme,
                        border: Border.all(
                          width: 0,
                          color: checkTheme,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        BlocProvider.of<ImageUserPutFileBloc>(context)
                            .add(PutFileEvent());
                      },
                      child: CircleAvatar(
                        radius: 62.h,
                        backgroundColor: checkTheme,
                        child: CircleAvatar(
                          backgroundColor: checkTheme,
                          radius: 60.h,
                          foregroundImage:
                              (stateImage is ImageUserPutFileSuccess)
                                  ? NetworkImage(stateImage.donlowadUrl)
                                  : const AssetImage(AppAssets.avatarProfile)
                                      as ImageProvider<Object>?,
                          child: stateImage is ImageUserPutFileLoading
                              ? const CircularProgressIndicator()
                              : null,
                        ),
                      ),
                    )
                  ],
                );
              },
            )
          ],
        );
      },
    );
  }
}
