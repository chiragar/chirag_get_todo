import 'dart:async';

import 'package:flutter_getx_todo/ui/screen/home/home_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    Timer(Duration(seconds: 3), () async {
        Get.offAll(HomeScreen());
    });
    super.onInit();
  }

}