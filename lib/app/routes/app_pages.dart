import 'package:get/get.dart';

import 'package:fallchat/app/modules/home/bindings/home_binding.dart';
import 'package:fallchat/app/modules/home/views/home_view.dart';
import 'package:fallchat/app/modules/introduction_screen/bindings/introduction_screen_binding.dart';
import 'package:fallchat/app/modules/introduction_screen/views/introduction_screen_view.dart';

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
      name: _Paths.INTRODUCTION_SCREEN,
      page: () => IntroductionScreenView(),
      binding: IntroductionScreenBinding(),
    ),
  ];
}
