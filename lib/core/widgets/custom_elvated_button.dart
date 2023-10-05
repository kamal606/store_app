import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../fonts/app_font.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton({
    super.key,
    required this.onPressed,
    this.title,
    this.titleAction,
    this.imageAction,
    this.isAction = false,
    this.fontTitle,
  });
  final void Function()? onPressed;
  final String? title;
  final String? titleAction;
  final String? imageAction;
  final bool isAction;
  final TextStyle? fontTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      ),
      child: isAction
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  titleAction ?? "",
                  style: AppFonts.semiBold_16,
                ),
                CircleAvatar(
                  foregroundImage: AssetImage(
                    imageAction!,
                  ),
                ),
              ],
            )
          : Text(
              title ?? "",
              style: fontTitle ?? AppFonts.semiBold_16,
            ),
    );
  }
}
