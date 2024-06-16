import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'package:get/get.dart';
import 'package:vertical_farm/app/core/design/themes.dart';
import 'package:vertical_farm/app/core/utils/constante.dart';

import 'app/routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(
    GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        theme: AppThemes.lightTheme),
  );
}
