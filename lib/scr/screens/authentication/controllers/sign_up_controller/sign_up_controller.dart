import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/utils/helpers/globs.dart';

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
    // TODO: implement onInit
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
      Get.snackbar(Globs.appName, "Pleaser enter valid email address");
      return;
    }
    if (passwordController.value.text.length < 6) {
      Get.snackbar(
          Globs.appName, "Pleaser enter valid password min 6 character");
      return;
    }
    if (usernameController.value.text.isEmpty) {
      Get.snackbar(Globs.appName, "Pleaser enter username");
      return;
    }
    if (lastNameController.value.text.isEmpty) {
      Get.snackbar(Globs.appName, "Pleaser enter username");
      return;
    }
    if (!privacyPolicy.value) {
      Get.snackbar(
          Globs.appName, "Pleaser check privacy policy and terms conditions");
      return;
    }
    //: Loading
    // Globs.showHUD();
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
