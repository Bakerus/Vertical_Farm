import 'package:get/get.dart';
import 'package:flutter/material.dart';

class GlobalAppController extends GetxController {
  final RxBool time = RxBool(true);
  final selectedTimeAmpoule = TimeOfDay(hour: 00, minute: 00).obs;
  final selectedTimeIrrigation = TimeOfDay(hour: 00, minute: 00).obs;
  final selectedTimeVidange = TimeOfDay(hour: 00, minute: 00).obs;

  void TimeChanged(TimeOfDay newTime, String nature) {
    time.value = false;
    if (nature == 'Ampoule') {
      selectedTimeAmpoule.value = newTime;
      print(selectedTimeAmpoule);
    } else if (nature == 'Irrigation') {
      selectedTimeIrrigation.value = newTime;
      print(selectedTimeIrrigation);
    } else if (nature == 'Vidange') {
      selectedTimeVidange.value = newTime;
      print(selectedTimeVidange);
    }
    // selectedTime.value = newTime;
    // print(selectedTime);
  }

  void presentTimePicker(BuildContext context, String nature) {
    showTimePicker(
      initialEntryMode:TimePickerEntryMode.input,
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((pickedTime) {
      TimeChanged(pickedTime ?? TimeOfDay(hour: 00, minute: 00), nature);
    });
  }
}
