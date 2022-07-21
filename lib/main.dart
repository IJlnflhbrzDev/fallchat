import 'package:fallchat/app/utils/error_screen.dart';
import 'package:fallchat/app/utils/loading_screen.dart';
import 'package:fallchat/app/utils/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return ErrorPage();
        }

        // connection done
        if (snapshot.connectionState == ConnectionState.done) {
          return FutureBuilder(
            future: Future.delayed(Duration(seconds: 3)),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return GetMaterialApp(
                  title: "Application",
                  initialRoute: Routes.HOME,
                  getPages: AppPages.routes,
                );
              }
              return SplashScreen();
            },
          );
        }
        return LoadingScreen();
      },
    );
  }
}
