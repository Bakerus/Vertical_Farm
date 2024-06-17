import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import 'package:vertical_farm/app/core/widgets/custom_card_data.dart';
import 'package:vertical_farm/app/core/widgets/custom_elevated_button.dart';
import 'package:vertical_farm/app/modules/automatisation/controllers/automatisation_controller.dart';
import 'package:vertical_farm/app/modules/home/controllers/home_controller.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final homecontroller = Get.put(HomeController());
    final controller = AutomatisationController();

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
        child: SizedBox(
          height: 72.0.hp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Controle des\n plantes",
                    style: Get.theme.textTheme.titleLarge,
                  ),
                  FaIcon(
                    FontAwesomeIcons.seedling,
                    size: 38.0.sp,
                  )
                ],
              ),
              SizedBox(
                height: 16.0.hp,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 70.0.wp,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomElevatedButton(
                                operation: "Ampoules",
                                onPressed: () {
                                  controller.controlampoule(
                                      controller.state.value, 4);
                                  controller.state(!controller.state.value);
                                },
                              ),
                              CustomElevatedButton(
                                operation: "Vidange",
                                onPressed: () {
                                  controller.controlampoule(
                                      controller.state.value, 10);
                                  controller.state(!controller.state.value);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          operation: "Irrigation",
                          onPressed: () {
                            controller.controlampoule(
                                controller.state.value, 3);
                            controller.state(!controller.state.value);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 44.0.hp,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => CustomCardData(
                              moduleTilte: "Temperature",
                              value: homecontroller.temperature.value,
                            )),
                        Obx(() => CustomCardData(
                              moduleTilte: "Conduitivite",
                              value: homecontroller.conductivite.value,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => CustomCardData(
                              moduleTilte: "pH",
                              value: homecontroller.ph.value,
                            )),
                        Obx(() => CustomCardData(
                              moduleTilte: "Luminosité",
                              value: homecontroller.luminosite.value,
                            )),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
