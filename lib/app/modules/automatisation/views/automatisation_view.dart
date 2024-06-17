import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import 'package:vertical_farm/app/core/utils/global_controller.dart';
import 'package:vertical_farm/app/core/widgets/custom_card_automatisation.dart';
import 'package:vertical_farm/app/core/widgets/dialog.dart';

import '../controllers/automatisation_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AutomatisationView extends GetView<AutomatisationController> {
  const AutomatisationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final automatisationController = Get.put(AutomatisationController());
    final globalcontroller = Get.put(GlobalAppController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
          child: SizedBox(
            height: 108.0.hp,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Automatisation",
                      style: Get.theme.textTheme.titleLarge,
                    ),
                    SvgPicture.asset('assets/icons/power.svg',
                        fit: BoxFit.cover, width: 18.0.wp, color: Colors.white),

                    // FaIcon(
                    //   FontAwesomeIcons.powerOff,
                    //   size: 38.0.sp,
                    // )
                  ],
                ),
                SizedBox(
                  height: 95.0.hp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => CustomCardAutomatisation(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogCustomize(
                                      title: 'Operation Reaussi',
                                      describe:
                                          'Votre configuration a été enregistré avec succées');
                                });
                          },
                          moduletitle: "Ampoule",
                          type: "ampoule",
                          heure: (globalcontroller
                                          .selectedTimeAmpoule.value.hour !=
                                      globalcontroller
                                          .selectedTimeAmpoule.value.hour) ||
                                  (globalcontroller
                                          .selectedTimeAmpoule.value.minute !=
                                      globalcontroller
                                          .selectedTimeAmpoule.value.minute)
                              ? "00:00"
                              : "${globalcontroller.selectedTimeAmpoule.value.hour} : ${globalcontroller.selectedTimeAmpoule.value.minute}",
                          actions: "Allumer",
                          selectedDay:
                              automatisationController.selectedDayAmpoule,
                        ),
                      ),
                      Obx(
                        () => CustomCardAutomatisation(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogCustomize(
                                      title: 'Operation Reaussi',
                                      describe:
                                          'Votre configuration a été enregistré avec succées');
                                });
                          },
                          moduletitle: "Irrigation",
                          type: "Irrigation",
                          heure: (globalcontroller
                                          .selectedTimeIrrigation.value.hour !=
                                      globalcontroller
                                          .selectedTimeIrrigation.value.hour) ||
                                  (globalcontroller.selectedTimeIrrigation.value
                                          .minute !=
                                      globalcontroller
                                          .selectedTimeIrrigation.value.minute)
                              ? "00:00"
                              : "${globalcontroller.selectedTimeIrrigation.value.hour} : ${globalcontroller.selectedTimeIrrigation.value.minute}",
                          actions: "Allumer",
                          selectedDay:
                              automatisationController.selectedDayIrrigation,
                        ),
                      ),
                      Obx(
                        () => CustomCardAutomatisation(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogCustomize(
                                      title: 'Operation Reaussi',
                                      describe:
                                          'Votre configuration a été enregistré avec succées');
                                });
                          },
                          moduletitle: "Vidange",
                          type: "Vidange",
                          heure: (globalcontroller
                                          .selectedTimeVidange.value.hour !=
                                      globalcontroller
                                          .selectedTimeVidange.value.hour) ||
                                  (globalcontroller
                                          .selectedTimeVidange.value.minute !=
                                      globalcontroller
                                          .selectedTimeVidange.value.minute)
                              ? "00:00"
                              : "${globalcontroller.selectedTimeVidange.value.hour} : ${globalcontroller.selectedTimeVidange.value.minute}",
                          actions: "Vider",
                          selectedDay:
                              automatisationController.selectedDayVindange,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
