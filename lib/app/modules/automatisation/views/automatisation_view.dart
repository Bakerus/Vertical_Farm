import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import 'package:vertical_farm/app/core/widgets/custom_card_automatisation.dart';

import '../controllers/automatisation_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AutomatisationView extends GetView<AutomatisationController> {
  const AutomatisationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final automatisationController = Get.put(AutomatisationController());
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
                      CustomCardAutomatisation(
                        onPressed: () {},
                        moduletitle: "Ampoule",
                        type: "ampoule",
                        heure: "06h30",
                        actions: "Allumer",
                        selectedDay:
                            automatisationController.selectedDayAmpoule,
                      ),
                      CustomCardAutomatisation(
                        onPressed: () {},
                        moduletitle: "Irrigation",
                        type: "Irrigation",
                        heure: "06h30",
                        actions: "Allumer",
                        selectedDay:
                            automatisationController.selectedDayIrrigation,
                      ),
                      CustomCardAutomatisation(
                        onPressed: () {},
                        moduletitle: "Vidange",
                        type: "Vidange",
                        heure: "06h30",
                        actions: "Vider",
                        selectedDay:
                            automatisationController.selectedDayVindange,
                      ),
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
