import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import 'package:vertical_farm/app/core/widgets/custom_card_data.dart';
import 'package:vertical_farm/app/core/widgets/custom_elevated_button.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomElevatedButton(operation: "Ampoules"),
                              CustomElevatedButton(operation: "Vidange"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomElevatedButton(operation: "Irrigation"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 44.0.hp,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCardData(
                          moduleTilte: "Temperature",
                          value: 25,
                         
                        ),
                        CustomCardData(
                          moduleTilte: "Conduitivite",
                          value: 115,
                          
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCardData(
                          moduleTilte: "pH",
                          value: 6.5,
                        ),
                        CustomCardData(
                          moduleTilte: "Luminosité",
                          value: 40,
                        ),
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
