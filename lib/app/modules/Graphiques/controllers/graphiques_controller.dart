import 'package:get/get.dart';

class GraphiquesController extends GetxController {
  //TODO: Implement GraphiquesController

  final count = 0.obs;
  final temperatureData = <double>[].obs;
  final humiditeData = <double>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // void startUpdatingValues() {
  //   homecontroller.startUpdatingValues();
  //   if (temperatureData.length >= 10) {
  //     temperatureData.removeAt(0);
  //   }
  //   if (humiditeData.length >= 10) {
  //     humiditeData.removeAt(0);
  //   }
  //   temperatureData.add(homecontroller.temperature.value);
  //   humiditeData.add(homecontroller.humidite.value);
  // }

      void updateTemperature(double newValue) {
    temperatureData.add(newValue);
    if (temperatureData.length > 10) {
      temperatureData.removeAt(0); // Keep only the latest 10 data points
    }
  }

    void updateHumidity(double newValue) {
    humiditeData.add(newValue);
    if (humiditeData.length > 10) {
      humiditeData.removeAt(0);
    }


}
}