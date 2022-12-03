import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'localization/localization.dart';
import 'routes/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Localization.init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(GetMaterialApp(
    title: "Storytells",
    locale: Get.deviceLocale,
    fallbackLocale: const Locale('en', 'US'),
    getPages: pages,
    initialRoute: Routes.home,
    translationsKeys: Localization.translationsKeys,
  ));
}
