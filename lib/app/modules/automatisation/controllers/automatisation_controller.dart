import 'package:get/get.dart';
import 'package:vertical_farm/app/data/provider/amploule_provider.dart';

class AutomatisationController extends GetxController {
  //TODO: Implement AutomatisationController

  final count = 0.obs;
  var selectedDayAmpoule = 'Tous les jours'.obs;
  var selectedDayVindange = 'Tous les jours'.obs;
  var selectedDayIrrigation = 'Tous les jours'.obs;
  final state = false.obs;
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
  AmpouleProvider ampouleProvider = AmpouleProvider();

  void setSelectedDay(String day, String type) {
    if (type == 'ampoule') {
      selectedDayAmpoule.value = day;
    } else if (type == 'Vidange') {
      selectedDayVindange.value = day;
    } else if (type == 'Irrigation') {
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

  controlampoule(bool state, int dataStreamId) async {
    // state = !state;
    await ampouleProvider.updateAmpouleState(state, dataStreamId);
  }
}
