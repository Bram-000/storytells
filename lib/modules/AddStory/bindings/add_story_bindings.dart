import 'package:get/get.dart';
import 'package:storytells/modules/AddStory/controllers/add_story_controller.dart';

class AddStoryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddStoryController());
  }
}
