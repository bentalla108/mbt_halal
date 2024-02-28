// import 'package:b_store/features/authentication/screen/login_screen/login_screen.dart';
// import 'package:b_store/features/authentication/screen/onboarding_screen/contents/onboarding_content.dart';
// import 'package:b_store/features/authentication/screen/signup_screen/signup_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// class OnBoardingController extends GetxController {
//   static OnBoardingController get instance => Get.find();

//   // Variables
//   Rx<int> currentPageindex = 0.obs;
//   final int numberPage = OnBoardingContent.subTitle.length;
//   final pageController = PageController();
//   // Update Current Index When Page Scroll
//   void updatePageIndicator(index) => currentPageindex.value = index;

//   //Jump to the specific dot page.
//   void dotNavigationClick(index) {
//     currentPageindex.value = index;
//     pageController.jumpTo(index + .0);
//   }

//   // Update current index et jump to next page.
//   void nextPage() {
//     if (currentPageindex.value == numberPage - 1) {
//       final storage = GetStorage();
//       storage.write('isFirstime', false);

//       Get.off(() => const LoginScreen());
//     } else {
//       pageController.jumpToPage(currentPageindex.value + 1);
//     }
//   }

//   void skipPage() {
//     currentPageindex.value = numberPage - 1;

//     pageController.jumpToPage(numberPage - 1);
//   }

//   void gotoSignUpScreen() {
//     Get.to(() => const SignUpScreen());
//   }
// }
