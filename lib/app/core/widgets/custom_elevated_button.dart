import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_farm/app/core/design/colors.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';

class CustomElevatedButton extends StatelessWidget {
  final double height;
  final double width;
  final String operation;
  final Color colors;
  final bool state;
  final void Function()? onPressed;
  const CustomElevatedButton(
      {super.key,
      this.height = 6.0,
      this.width = 32.0,
      this.operation = "",
      this.state = false,
      this.colors = AppColors.yellowSecondary,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width.wp,
        height: height.hp,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(colors),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
               RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(45.0),
                side: const BorderSide(color: AppColors.yellowSecondary, width: 2.0)
              ),
            ),
          ),
          child: Center(
              child: Text(
            operation,
            style: Get.theme.textTheme.bodySmall,
          )),
        ));
  }
}
