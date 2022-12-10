import 'package:get/get.dart';
import 'package:storytells/modules/AddStory/bindings/add_story_bindings.dart';
import 'package:storytells/modules/AddStory/views/add_story_view.dart';
import 'package:storytells/modules/BottomNavBar/bindings/bottom_navigation_bindings.dart';
import 'package:storytells/modules/BottomNavBar/views/bottom_navigation_view.dart';
import 'package:storytells/modules/Profile/bindings/profile_bindings.dart';
import 'package:storytells/modules/Profile/views/profile_view.dart';
import 'package:storytells/modules/SoonTo/bindings/soon_to_bindings.dart';
import 'package:storytells/modules/SoonTo/views/soon_to_view.dart';
import 'package:storytells/modules/TopOf/views/top_of_view.dart';

import '../modules/Home/bindings/home_bindings.dart';
import '../modules/Home/views/home_view.dart';

part 'routes.dart';

final pages = [
  GetPage(
    name: Routes.bottomBar,
    binding: BottomBarBindings(),
    page: () => BottomNavigationView(),
  ),
  GetPage(
    name: Routes.home,
    binding: HomeBindings(),
    page: () => HomeView(),
  ),
  GetPage(
    name: Routes.add,
    binding: AddStoryBindings(),
    page: () => AddStoryView(),
  ),
  GetPage(
    name: Routes.top,
    binding: SoonToBindings(),
    page: () => TopOfView(),
  ),
  GetPage(
    name: Routes.soon,
    binding: SoonToBindings(),
    page: () => SoonToView(),
  ),
  GetPage(
    name: Routes.profile,
    binding: ProfileBindings(),
    page: () => ProfileView(),
  ),

  // GetPage(
  //   binding: SplashBindings(),
  //   name: Routes.splash,
  //   page: () => const SplashView(),
  // ),
];
