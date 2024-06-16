import 'package:get/get.dart';

import '../controllers/graphiques_controller.dart';

class GraphiquesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GraphiquesController>(
      () => GraphiquesController(),
    );
  }
}
