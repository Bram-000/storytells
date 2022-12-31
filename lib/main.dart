import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:storytells/themes/theme.dart';

import 'localization/localization.dart';
import 'routes/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Localization.init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(GetMaterialApp(
    title: "app_title".tr,
    locale: Get.deviceLocale,
    fallbackLocale: const Locale('en', 'US'),
    getPages: pages,
    theme: STheme.mainTheme,
    initialRoute: Routes.bottomBar,
    translationsKeys: Localization.translationsKeys,
  ));
}
