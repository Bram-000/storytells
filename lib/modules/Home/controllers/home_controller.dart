import 'package:get/get.dart';

import '../../../models/card_model.dart';
import '../../../models/category_model.dart';

class HomeController extends GetxController {
  final allStories = <Story>[
    maleStoryTest,
    femaleStoryTest,
    otherStoryTest,
    lgbtStoryTest,
    lgbtStoryTest,
  ].obs;
  var filteredStories = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    filteredStories.value = allStories;
  }

  void filter(Category category) {
    filteredStories.value =
        allStories.where((story) => story.category == category).toList();
  }

  void showAllStories() {
    filteredStories.value = allStories;
  }
}
