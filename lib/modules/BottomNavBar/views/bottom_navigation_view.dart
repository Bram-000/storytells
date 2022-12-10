import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:storytells/modules/AddStory/views/add_story_view.dart';
import 'package:storytells/modules/BottomNavBar/controllers/bottom_navigation_controller.dart';
import 'package:storytells/modules/Home/views/home_view.dart';
import 'package:storytells/modules/Profile/views/profile_view.dart';
import 'package:storytells/modules/SoonTo/views/soon_to_view.dart';
import 'package:storytells/modules/TopOf/views/top_of_view.dart';

import '../../../themes/theme.dart';

class BottomNavigationView extends GetWidget<BottomNavigationController> {
  BottomNavigationView({Key? key}) : super(key: key);
  final screens = [
    HomeView(),
    TopOfView(),
    AddStoryView(),
    SoonToView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        body: Obx(
          () => IndexedStack(
            index: controller.selectedIndex.value,
            children: screens,
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'home'.tr,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.local_fire_department),
                label: 'top_story'.tr,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.add_box),
                label: 'add_story'.tr,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.timelapse_rounded),
                label: 'soon_to_delete'.tr,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: 'profile'.tr,
              ),
            ],
            selectedItemColor: STheme.commentDark,
            unselectedItemColor: STheme.topSilver,
            type: BottomNavigationBarType.shifting,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) {
              controller.changeIndexPage(index);
            },
          ),
        ),
      );
    });
  }
}
