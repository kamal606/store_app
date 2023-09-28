import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/fonts/app_font.dart';

class SectionDescription extends StatelessWidget {
  const SectionDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: AppFonts.semiBold_16,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "asfsafsadfafsadfafsadafsadfafsadfafsadfafsafafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfaffafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfafsadfaaadas-",
            style: AppFonts.regular_11,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}