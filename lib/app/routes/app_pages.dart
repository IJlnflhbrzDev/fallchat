import 'package:get/get.dart';

import 'package:fallchat/app/modules/Login/bindings/login_binding.dart';
import 'package:fallchat/app/modules/Login/views/login_view.dart';
import 'package:fallchat/app/modules/chat_room/bindings/chat_room_binding.dart';
import 'package:fallchat/app/modules/chat_room/views/chat_room_view.dart';
import 'package:fallchat/app/modules/home/bindings/home_binding.dart';
import 'package:fallchat/app/modules/home/views/home_view.dart';
import 'package:fallchat/app/modules/introduction_screen/bindings/introduction_screen_binding.dart';
import 'package:fallchat/app/modules/introduction_screen/views/introduction_screen_view.dart';
import 'package:fallchat/app/modules/profile/bindings/profile_binding.dart';
import 'package:fallchat/app/modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

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
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_ROOM,
      page: () => ChatRoomView(),
      binding: ChatRoomBinding(),
    ),
  ];
}
