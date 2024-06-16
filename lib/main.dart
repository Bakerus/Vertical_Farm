import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vertical_farm/app/core/design/themes.dart';

import 'app/routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        theme: AppThemes.lightTheme),
  );
}
