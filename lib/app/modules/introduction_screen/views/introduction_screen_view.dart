import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        child: Text(
          'IntroductionScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
