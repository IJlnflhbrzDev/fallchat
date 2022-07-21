import 'package:get/get.dart';

class AuthController extends GetxController {
  // Noted : variable ini untuk kasih tau kasih tau user kalo sudah ter auth maka mereka tidak aka di arah kan ke introduction screen
  var isSkipIntroDuctionScreen = false.obs;

  //Noted :  variable ini untuk kasih tau bahwa user udh auth atau daftar login blm
  var isSkipAuth = false.obs;
}
