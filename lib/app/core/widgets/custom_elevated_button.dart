import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';

class CustomElevatedButton extends StatelessWidget {
  final double height;
  final double width;
  final String operation;
  const CustomElevatedButton(
      {super.key, this.height = 6.0, this.width = 32.0, this.operation = ""});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width.wp,
        height: height.hp,
        child: ElevatedButton(
          onPressed: () {},
          child: Center(
              child: Text(
            operation,
            style: Get.theme.textTheme.bodySmall,
          )),
        ));
  }
}
