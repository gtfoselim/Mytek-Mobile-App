import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytekmobile/features/authentification/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pagecontroller = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pagecontroller.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pagecontroller.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pagecontroller.jumpToPage(2);
  }
}
