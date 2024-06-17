import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_farm/app/core/design/colors.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import 'package:vertical_farm/app/modules/home/views/home_view.dart';


class DialogCustomize extends StatelessWidget {
  final String title;
  final String describe;
  const DialogCustomize(
      {super.key, required this.title, required this.describe});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: AppColors.greenSecondary,
      content: SizedBox(
        height: 40.0.hp,
        width: 80.0.wp,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromRGBO(245, 248, 255, 1),
              radius: 30.0.sp,
              child: Icon(
                Icons.check,
                color: AppColors.yellowSecondary,
                size: 40.0.sp,
              ),
            ),
            SizedBox(
              height: 10.0.hp,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  Text(
                    describe,
                    textAlign: TextAlign.center,
                    style:  Get.theme.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 45.0.wp,
              height: 6.0.hp,
              child:  ElevatedButton(onPressed: () {
                Get.to( HomeView());
              }, child: Text("Vers l'accueil")),
            ),
          ],
        ),
      ),
    );
  }
}
