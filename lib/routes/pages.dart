import 'package:get/get.dart';

import '../modules/Home/bindings/home_bindings.dart';
import '../modules/Home/views/home_view.dart';

part 'routes.dart';

final pages = [
  GetPage(
    name: Routes.home,
    binding: HomeBindings(),
    page: () => HomeView(),
  ),
  // GetPage(
  //   binding: SplashBindings(),
  //   name: Routes.splash,
  //   page: () => const SplashView(),
  // ),
];
