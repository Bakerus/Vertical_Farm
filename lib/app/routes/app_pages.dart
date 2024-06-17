import 'package:get/get.dart';

import '../modules/Camera/bindings/camera_binding.dart';
import '../modules/Camera/views/camera_view.dart';
import '../modules/Graphiques/bindings/graphiques_binding.dart';
import '../modules/Graphiques/views/graphiques_view.dart';
import '../modules/automatisation/bindings/automatisation_binding.dart';
import '../modules/automatisation/views/automatisation_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/maladie/bindings/maladie_binding.dart';
import '../modules/maladie/views/maladie_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GRAPHIQUES,
      page: () => const GraphiquesView(),
      binding: GraphiquesBinding(),
    ),
    GetPage(
      name: _Paths.AUTOMATISATION,
      page: () => const AutomatisationView(),
      binding: AutomatisationBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA,
      page: () => const CameraView(),
      binding: CameraBinding(),
    ),
    GetPage(
      name: _Paths.MALADIE,
      page: () => Maladie(),
      binding: MaladieBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
  ];
}
