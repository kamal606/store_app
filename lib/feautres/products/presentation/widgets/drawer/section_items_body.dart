import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icon_drawer.dart';
import 'package:store_app/core/color/app_color.dart';

class SectionItemsBody extends StatelessWidget {
  const SectionItemsBody(
      {super.key, required this.widthDrawer, required this.isDarkTheme});
  final double widthDrawer;
  final bool isDarkTheme;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          ItemsDrawer.itemsDrawer(context).length,
          // ItemsDrawer.itemsDrawer.length,
          (i) => Container(
            padding: EdgeInsets.only(
              bottom: 20.h,
            ),
            width: widthDrawer,
            child: Row(
              children: [
                Icon(
                  ItemsDrawer.itemsDrawer(context)[i].nameIcon,
                  size: ItemsDrawer.itemsDrawer(context)[i].sizedIcon,
                  color: isDarkTheme
                      ? AppColor.white
                      : ItemsDrawer.itemsDrawer(context)[i].colorIcon,
                ),
                SizedBox(
                  width: 40.h,
                ),
                Text(
                  ItemsDrawer.itemsDrawer(context)[i].title,
                  style: ItemsDrawer.itemsDrawer(context)[i].sizedFont,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}