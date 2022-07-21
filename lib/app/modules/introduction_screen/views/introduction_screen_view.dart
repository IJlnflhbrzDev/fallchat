import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_screen_controller.dart';

class IntroductionScreenView extends GetView<IntroductionScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IntroductionScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Berinteraksi dengan mudah",
              body:
                  'Kamu hanya perlu dirumah saja untuk mendapatkan teman baru',
              image: Container(
                width: Get.width * .9,
                height: Get.height * .9,
                child: Lottie.asset('assets/main-laptop-duduk.json'),
              ),
            ),
            PageViewModel(
              title: "Temukan sahabat baru",
              body:
                  'Jika kamu memang jodoh karena aplikasi ini, kami sangat bangga ',
              image: Container(
                width: Get.width * .9,
                height: Get.height * .9,
                child: Lottie.asset('assets/ojek.json'),
              ),
            ),
            PageViewModel(
              title: "Aplikasi Bebas  biaya",
              body: 'Kamu tidak perlu khawatir aplikasi ini 100% Gratis ',
              image: Container(
                width: Get.width * .9,
                height: Get.height * .9,
                child: Lottie.asset('assets/payment.json'),
              ),
            ),
            PageViewModel(
              title: "Gabung sekarang juga ",
              body:
                  'Daftarkan diri kamu untuk menjadi bagian dari kami, Kami akan mengubungkan anda dengan 1000+ teman lainnya',
              image: Container(
                width: Get.width * .9,
                height: Get.height * .9,
                child: Lottie.asset('assets/login.json'),
              ),
            ),
          ],
          onDone: () {
            // When done button is press
          },
          showBackButton: false,
          showSkipButton: true,
          skip: const Icon(Icons.skip_next),
          next: Text('next'),
          done:
              const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
      ),
    );
  }
}
