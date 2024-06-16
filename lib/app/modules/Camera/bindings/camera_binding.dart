import 'package:get/get.dart';

import '../controllers/camera_controller.dart';

class CameraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CameraController>(
      () => CameraController(),
    );
  }
}
