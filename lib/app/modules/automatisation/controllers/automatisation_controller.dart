import 'package:get/get.dart';

class AutomatisationController extends GetxController {
  //TODO: Implement AutomatisationController

  final count = 0.obs;
  var selectedDayAmpoule = 'Tous les jours'.obs;
  var selectedDayVindange = 'Tous les jours'.obs;
  var selectedDayIrrigation = 'Tous les jours'.obs;

  final List<String> daysOfWeek = [
    'Tous les jours',
    'Lundi',
    'Mardi',
    'Mercredi',
    'Jeudi',
    'Vendredi',
    'Samedi',
    'Dimanche'
  ];

  void setSelectedDay(String day, String type) {
    if(type == 'ampoule') {
      selectedDayAmpoule.value = day;
    }
    else if(type == 'Vidange') {
      selectedDayVindange.value = day;
    }
    else if(type == 'Irrigation') {
      selectedDayIrrigation.value = day;
    }
  
  }



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

  void increment() => count.value++;
}
