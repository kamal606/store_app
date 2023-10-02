import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_onbording.dart';
import 'package:store_app/feautres/start_app/presentation/widgets/on_bording/section_bottom.dart';
import 'package:store_app/feautres/start_app/presentation/widgets/on_bording/section_image.dart';
import 'package:store_app/feautres/start_app/presentation/widgets/on_bording/section_text.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  final PageController pageController = PageController();
  int index = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double heightContainer = MediaQuery.of(context).size.height / 2;

    return PageView.builder(
        controller: pageController,
        itemCount: ClassOnBording.onBordingList.length,
        itemBuilder: (context, i) {
          index = i;

          final onBording = ClassOnBording.onBordingList[i];
          return CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20.h, vertical: kToolbarHeight),
                  child: Column(
                    children: [
                      //images
                      SectionImageOnBording(
                        image: onBording.image,
                        heightContainer: heightContainer,
                      ),
                      SizedBox(height: heightContainer / 8),
                      //titles
                      SectionText(
                        title: onBording.title,
                        subtitle: onBording.subTitle,
                        heightContainer: heightContainer,
                      ),
                      const Spacer(),
                      //icon button
                      SectionBottom(
                        pageController: pageController,
                        index: index,
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
