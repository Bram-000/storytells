import 'package:get/get.dart';
import 'package:storytells/modules/AddStory/controllers/add_story_controller.dart';
import 'package:storytells/modules/BottomNavBar/controllers/bottom_navigation_controller.dart';
import 'package:storytells/modules/Home/controllers/home_controller.dart';

class BottomBarBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => AddStoryController());
  }
}
