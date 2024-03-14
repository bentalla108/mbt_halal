import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/core/utils/helpers/helper_functions.dart';
import 'package:mtb_halal/scr/core/utils/http/endpoint.dart';
import 'package:mtb_halal/scr/core/utils/http/http_service_call.dart';

import '../auth_controller.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final RxBool isHidePassword = true.obs;
  final RxBool privacyPolicy = false.obs;

  final emailController = TextEditingController().obs;

  final lastNameController = TextEditingController().obs;

  final usernameController = TextEditingController().obs;

  final firstNameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final phoneNumberController = TextEditingController().obs;

  @override
  void onInit() {
    super.onInit();

    if (kDebugMode) {
      print("SignUpViewModel Init ");
    }
    usernameController.value.text = "User1";
    emailController.value.text = "user1@gmail.com";
    passwordController.value.text = "123456";
  }

  //! Show Hide password
  void showPassword() {
    isHidePassword.value = !isHidePassword.value;
  }

  //! Check Email and Password & Call Api
  void apiCallSignUp() {
    if (!GetUtils.isEmail(emailController.value.text)) {
      Get.snackbar(BTextsConstant.appName, "Pleaser enter valid email address");
      return;
    }
    if (passwordController.value.text.length < 6) {
      Get.snackbar(BTextsConstant.appName,
          "Pleaser enter valid password min 6 character");
      return;
    }
    if (usernameController.value.text.isEmpty) {
      Get.snackbar(BTextsConstant.appName, "Pleaser enter username");
      return;
    }
    if (lastNameController.value.text.isEmpty) {
      Get.snackbar(BTextsConstant.appName, "Pleaser enter username");
      return;
    }
    if (!privacyPolicy.value) {
      Get.snackbar(BTextsConstant.appName,
          "Pleaser check privacy policy and terms conditions");
      return;
    }

    //: Loading
    BHelperFunctions.showHUD();

    // call Api SignUp
    HttpServiceCall.post(SVKey.svSignUp, {
      "username": usernameController.value.text,
      "email": emailController.value.text,
      "password": passwordController.value.text,
    }, withSuccess: (resObj) async {
      BHelperFunctions.hideHUD();

      var payload = resObj[KKey.payload] as Map? ?? {};

      PrefUtils.udSet(payload, BTextsConstant.userPayload);
      PrefUtils.udBoolSet(true, BTextsConstant.userLogin);

      Get.delete<SignUpController>();
      AuthNavigationController.instance.goToLogin();

      Get.snackbar(BTextsConstant.appName, resObj["message"].toString());
    }, failure: (err) async {
      BHelperFunctions.hideHUD();
      Get.snackbar(BTextsConstant.appName, err.toString());
    });
  }
}













// class SignUpController {
//   static SignUpController get instance => Get.find();

//   final RxBool hidePassword = true.obs;
//   final RxBool privacyPolicy = false.obs;

//   final email = TextEditingController();

//   final lastName = TextEditingController();

//   final username = TextEditingController();

//   final firstName = TextEditingController();
//   final password = TextEditingController();

// final phoneNumber = TextEditingController();

//   GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

//   Future<void> signUp() async {
//     try {
//       //! Start Loading
//       BFullScreenLoader.openLoadingDialog(
//           "We are processing your information", BImages.processing);

//       //! Check Connectivity
//       final isConnected = await NetworkManager.instance.isConnected();

//       if (!isConnected) {
//         BFullScreenLoader.stopLoading();

//         return;
//       }

//       //! Form Validation

//       if (!signUpFormKey.currentState!.validate()) {
//         BFullScreenLoader.stopLoading();

//         return;
//       }

//       //! Privacy Policy check

//       if (!privacyPolicy.value) {
//         BLoaders.warningSnackBar(
//             title: 'Accep Privacy Policy',
//             message:
//                 'In order to create account you must have to read and accept the Privacy  & Term of Use');
//         BFullScreenLoader.stopLoading();

//         return;
//       }

//       //! Register user in the Firebase auth & save user in Firebase

//       final userCredential = await AuthenticationRepository.instance
//           .registerWithEmailAndPassword(
//               email.text.trim(), password.text.trim());

//       //! Save authenticate user  data in the firebase firestore
//       final newUser = UserModal(
//           id: userCredential.user!.uid,
//           firstName: firstName.text.trim(),
//           lastName: lastName.text.trim(),
//           username: username.text.trim(),
//           email: email.text.trim(),
//           phoneNumber: phoneNumber.text.trim(),
//           profilePicture: '');

//       final userRepository = Get.put(UserRepository());
//       await userRepository.saveUserRecord(newUser);

//       BFullScreenLoader.stopLoading();

//       //! show Succes message
//       BLoaders.successSnackBar(
//           title: 'Congretulation',
//           message: 'Your account has been created! Verify email to continue');

//       //! Move to Virify Email Screen
//       Get.to(() => VerifyEmailScreen(
//             email: email.text.trim(),
//           ));

//       //BFull
//     } catch (e) {
//       BFullScreenLoader.stopLoading();
//       // Some generic error to the user
//       BLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
//     }
//   }
// }
