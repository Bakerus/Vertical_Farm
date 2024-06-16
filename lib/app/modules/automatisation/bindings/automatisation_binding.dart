import 'package:get/get.dart';

import '../controllers/automatisation_controller.dart';

class AutomatisationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AutomatisationController>(
      () => AutomatisationController(),
    );
  }
}
