import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import 'package:vertical_farm/app/core/widgets/custom_elevated_button.dart';

import '../controllers/camera_controller.dart';

class CameraView extends GetView<CameraController> {
  const CameraView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 78.0.hp,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Camera",
                      style: Get.theme.textTheme.titleLarge,
                    ),
                    FaIcon(
                      FontAwesomeIcons.image,
                      size: 38.0.sp,
                    )
                  ],
                ),
                Container(
                  width: 100.0.wp,
                  height: 38.0.hp,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Text(""),
                ),
                SizedBox(
                  height: 28.0.hp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Plantes:",
                            style: Get.theme.textTheme.bodySmall,
                          ),
                          Text(
                            "Plantes",
                            style: Get.theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Age Approximatif:",
                            style: Get.theme.textTheme.bodySmall,
                          ),
                          Text(
                            "6 mois",
                            style: Get.theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Phase de maturation:",
                            style: Get.theme.textTheme.bodySmall,
                          ),
                          Text(
                            "Fructification",
                            style: Get.theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Conseils:",
                            style: Get.theme.textTheme.bodySmall,
                          ),
                          Text(
                            "",
                            style: Get.theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                            onPressed: () {},
                            width: 12.0.wp,
                            operation: "Mise à jour",
                          ),
                          CustomElevatedButton(
                            onPressed: () {},
                            width: 12.0.wp,
                            operation: "Photo",
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
