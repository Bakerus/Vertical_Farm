import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vertical_farm/app/core/design/colors.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import 'package:vertical_farm/app/modules/home/controllers/home_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final HomeController controller;
  CustomBottomNavigationBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(
        height: 8.5.hp,
        surfaceTintColor: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Obx(
          () => Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.0.wp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () => controller.onItemTapped(0),
                  child: FaIcon(FontAwesomeIcons.gaugeHigh,
                      size: 18.0.sp,
                      color: controller.selectedIndex.value == 0
                          ? AppColors.yellowSecondary
                          : Colors.white),
                ),
                GestureDetector(
                  onTap: () => controller.onItemTapped(1),
                  child: FaIcon(FontAwesomeIcons.chartPie,
                      size: 17.0.sp,
                      color: controller.selectedIndex.value == 1
                          ? AppColors.yellowSecondary
                          : Colors.white),
                ),
                GestureDetector(
                  onTap: () => controller.onItemTapped(2),
                  child: Icon(Icons.alarm_sharp,
                      size: 18.0.sp,
                      color: controller.selectedIndex.value == 2
                          ? AppColors.yellowSecondary
                          : Colors.white),
                ),
                GestureDetector(
                  onTap: () => controller.onItemTapped(3),
                  child: SvgPicture.asset('assets/icons/Fat.svg',
                      fit: BoxFit.cover,
                      width: 22.0.sp,
                      color: controller.selectedIndex.value == 3
                          ? AppColors.yellowSecondary
                          : Colors.white),
                )

                // FaIcon(FontAwesomeIcons.camera,
                //     size: 18.0.sp,
                //     color: controller.selectedIndex.value == 3
                //         ? AppColors.yellowSecondary
                //         : Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
