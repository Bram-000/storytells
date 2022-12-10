import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:storytells/modules/Home/controllers/home_controller.dart';
import 'package:storytells/themes/theme.dart';
import 'package:storytells/widgets/category_widget.dart';
import 'package:storytells/widgets/story_card.dart';

class HomeView extends GetWidget<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            title: TextButton(
              onPressed: controller.showAllStories,
              child: Text(
                "app_title".tr,
                style: STheme.appBarTitleStyle,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CategoriesWidget(),
              controller.allStories.isEmpty
                  ? SizedBox(
                      height: 60.h,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Obx(
                      () => CarouselSlider.builder(
                        itemCount: controller.filteredStories.value.length,
                        itemBuilder:
                            (BuildContext context, int index, int realIndex) {
                          return StoryCard(
                            storyCard:
                                controller.filteredStories.value[realIndex],
                          );
                        },
                        options: CarouselOptions(
                          height: 60.h,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          reverse: false,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                          scrollPhysics: BouncingScrollPhysics(),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
