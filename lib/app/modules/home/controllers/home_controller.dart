import 'dart:async';
import 'dart:math';

import 'package:get/get.dart';
import 'package:vertical_farm/app/modules/Graphiques/controllers/graphiques_controller.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final selectedIndex = 0.obs;
  final previousIndex = 0.obs;
  final temperature = 0.0.obs;
  final humidite = 0.0.obs;
  final conductivite = 0.0.obs;
  final ph = 0.0.obs;
  final luminosite = 0.0.obs;

  final GraphiquesController graphiquesController = Get.put(GraphiquesController());
  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    startUpdatingValues();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }

  void increment() => count.value++;

  void onItemTapped(int index) {
    selectedIndex.value = index;
    previousIndex.value = selectedIndex.value;
  }

  void startUpdatingValues() {
    final random = Random();
    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      temperature.value = (23 + random.nextDouble() * 6)
          .toPrecision(1); // Between 20.0 and 25.0
      humidite.value = (23 + random.nextDouble() * 6)
          .toPrecision(1); // Between 20.0 and 30.0
      conductivite.value = (105 + random.nextDouble() * 10)
          .toPrecision(1); // Between 100.0 and 120.0
      ph.value =
          (6.5 + random.nextDouble() * 1).toPrecision(1); // Between 6.0 and 7.0
      luminosite.value = (30 + random.nextDouble() * 10)
          .toPrecision(1); // Between 30.0 and 50.0

      graphiquesController.updateTemperature(temperature.value);
      graphiquesController.updateHumidity(humidite.value);
    });
  }
}
