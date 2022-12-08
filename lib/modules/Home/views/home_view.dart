import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:storytells/modules/Home/controllers/home_controller.dart';
import 'package:storytells/widgets/category_widget.dart';

import '../../../models/card_model.dart';
import '../../../widgets/story_card.dart';

class HomeView extends GetWidget<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            title: Text("app_title".tr),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CategoriesWidget(),
              CarouselSlider(
                  items: [
                    StoryCard(
                      storyCard: maleStoryTest,
                    ),
                    StoryCard(
                      storyCard: femaleStoryTest,
                    ),
                    StoryCard(
                      storyCard: otherStoryTest,
                    ),
                    StoryCard(
                      storyCard: lgbtStoryTest,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 60.h,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
            ],
          ),
        );
      },
    );
  }
}
