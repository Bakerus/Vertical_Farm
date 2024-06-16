import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vertical_farm/app/core/widgets/custom_appbar.dart';
import 'package:vertical_farm/app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:vertical_farm/app/core/widgets/pageTransition.dart';
import 'package:vertical_farm/app/modules/Camera/views/camera_view.dart';
import 'package:vertical_farm/app/modules/Graphiques/views/graphiques_view.dart';
import 'package:vertical_farm/app/modules/automatisation/views/automatisation_view.dart';
import 'package:vertical_farm/app/modules/home/views/dashboard.dart';
import 'package:vertical_farm/app/modules/maladie/views/maladie_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView({Key? key}) : super(key: key);

    //     static const begin = Offset(1.0, 0.0);
    //   static const end = Offset.zero;
    //  static const curve = Curves.easeInOut;
    //   static final tween = Tween(begin: begin, end: end);
    // static final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
    

    final List<Widget> pages = [
       DashBoard(),
      GraphiquesView(),
      AutomatisationView(),
      CameraView(),
      Maladie()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppbar(),
     body: Obx(() {
        int direction = controller.selectedIndex.value > controller.previousIndex.value ? 1 : -1;
        return IndexedStack(
          index: controller.selectedIndex.value,
          children: pages.asMap().entries.map((entry) {
            int idx = entry.key;
            Widget page = entry.value;
            return PageTransitionSwitcher(
              child: page,
              direction: direction,
              key: ValueKey<int>(idx), // Utilisez une clé pour chaque page
            );
          }).toList(),
        );
      }),
      bottomNavigationBar: CustomBottomNavigationBar(controller: controller),
    );
  }
}