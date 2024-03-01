// import 'dart:async';

// import 'package:b_store/commons/widgets/success_screen/success_screen.dart';
// import 'package:b_store/data/repository/authentication_repository/authentication_repository.dart';
// import 'package:b_store/utils/constants/image_strings.dart';
// import 'package:b_store/utils/constants/text_strings.dart';
// import 'package:b_store/utils/popups/loaders.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';

// class VerifyEmailController extends GetxController {
//   static VerifyEmailController get instance => Get.find();

//   //! Send Email whenever Verify Screen appears & Set Timer for auto redirect

//   @override
//   void onInit() {
//     sendEmailVerification();
//     setTimerForAutoRedirect();
//     super.onInit();
//   }

//   //! Send Email Verification link
//   void sendEmailVerification() async {
//     try {
//       await AuthenticationRepository.instance.sendEmailVerification();
//       BLoaders.successSnackBar(
//           title: 'Email Sent',
//           message: 'Please check your inbox and verify Email');
//     } catch (e) {
//       BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
//     }
//   }

//   //! Timer to automatically redirect  on Email Verification
//   void setTimerForAutoRedirect() {
//     Timer.periodic(const Duration(seconds: 1), (timer) async {
//       await FirebaseAuth.instance.currentUser?.reload();
//       final user = FirebaseAuth.instance.currentUser;

//       if (user?.emailVerified ?? false) {
//         timer.cancel();
//         Get.off(() => SucessScreen(
//             onPressed: () => AuthenticationRepository.instance.screendirect(),
//             image: BImages.userCreatedSuccessfully,
//             title: BTexts.yourAccountCreatedTitle,
//             subTitle: BTexts.yourAccountCreatedSubTitle));
//       }
//     });
//   }

//   //! Manuel Check if Email Verified
//   void checkEmailVerificationStatus() {
//     final user = FirebaseAuth.instance.currentUser;

//     if (user != null && user.emailVerified) {
//       Get.off(() => SucessScreen(
//           onPressed: () => AuthenticationRepository.instance.screendirect(),
//           image: BImages.userCreatedSuccessfully,
//           title: BTexts.yourAccountCreatedTitle,
//           subTitle: BTexts.yourAccountCreatedSubTitle));
//     }
//   }
// }
