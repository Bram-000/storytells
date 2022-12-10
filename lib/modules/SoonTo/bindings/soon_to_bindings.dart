import 'package:get/get.dart';

import '../controllers/soon_to_controller.dart';

class SoonToBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SoonToController());
  }
}
