
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_farm/app/core/design/colors.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';

class CustomCardData extends StatelessWidget {
  final String moduleTilte;
  final double value;
  final String symbole;
  const CustomCardData({super.key, this.moduleTilte="", this.value=0, this.symbole=""});

  @override
  Widget build(BuildContext context) {
    return           Container(
            width: 43.0.wp,
            height: 21.0.hp,
            padding: const EdgeInsets.symmetric(vertical: 7.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 13.0.hp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        moduleTilte,
                        textAlign: TextAlign.left,
                        style: Get.theme.textTheme.bodySmall,
                      ),
                      Text(
                        "$value $symbole",
                        style: Get.theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: const BoxDecoration(
                color: AppColors.greenSecondary,
                borderRadius: BorderRadius.all(Radius.circular(20))),
          );
  }
}