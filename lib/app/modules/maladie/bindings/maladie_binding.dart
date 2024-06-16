import 'package:get/get.dart';

import '../controllers/maladie_controller.dart';

class MaladieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaladieController>(
      () => MaladieController(),
    );
  }
}
