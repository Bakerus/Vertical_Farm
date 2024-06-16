import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_farm/app/core/design/colors.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import 'package:vertical_farm/app/modules/automatisation/controllers/automatisation_controller.dart';

class CustomCardAutomatisation extends StatelessWidget {
  final String moduletitle;
  final String type;
  final String heure;
  final String actions;
  final selectedDay;
  const CustomCardAutomatisation(
      {super.key, this.moduletitle = "", required this.selectedDay, required this.type, this.heure = "", this.actions = ""});

  @override
  Widget build(BuildContext context) {
    final automatisationController = Get.put(AutomatisationController());

    return Container(
      width: 100.0.wp,
      height: 30.0.hp,
      padding: EdgeInsets.symmetric(horizontal: 5.0.wp, vertical: 1.0.hp),
      decoration: BoxDecoration(
          color: AppColors.greenSecondary,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20.0.hp,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(moduletitle, style: Get.theme.textTheme.bodySmall),
                      Obx(
                        () => DropdownButton<String>(
                          value: selectedDay.value,
                          style: Get.theme.textTheme.bodySmall!.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w400),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          underline: Container(
                            height: 20,
                            decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white, width: 3)),
                            ),
                          ),
                          items: automatisationController.daysOfWeek
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                                value: value, child: Text(value));
                          }).toList(),
                          onChanged: (value) =>
                              automatisationController.setSelectedDay(value!, type),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 67.0.wp,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Heure",
                                  style: Get.theme.textTheme.bodySmall),
                              Text(heure,
                                  style: Get.theme.textTheme.bodyMedium),
                            ],
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 74.0.wp,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(actions,
                                  style: Get.theme.textTheme.bodySmall),
                              Text("Alluumer",
                                  style: Get.theme.textTheme.bodyMedium),
                            ],
                          )),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
