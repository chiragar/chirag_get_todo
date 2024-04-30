import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_todo/logic/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FlutterLogo(size: 70),
                SizedBox(height: 8),
                CircularProgressIndicator()
              ],
            ),
          );
        },
      ),
    );
  }
}
