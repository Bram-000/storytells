import 'package:get/get.dart';

import '../controllers/top_of_controller.dart';

class TopOfBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopOfController());
  }
}
