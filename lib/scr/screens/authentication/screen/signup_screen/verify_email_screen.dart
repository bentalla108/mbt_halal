// import 'package:b_store/data/repository/authentication_repository/authentication_repository.dart';
// import 'package:b_store/features/authentication/controllers/sign_up_controller/verify_email_controller.dart';
// import 'package:b_store/utils/constants/image_strings.dart';
// import 'package:b_store/utils/constants/sizes.dart';
// import 'package:b_store/utils/constants/text_strings.dart';
// import 'package:b_store/utils/helpers/helper_functions.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class VerifyEmailScreen extends StatelessWidget {
//   final String? email;

//   const VerifyEmailScreen({super.key, this.email});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(VerifyEmailController());
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         actions: [
//           IconButton(
//               onPressed: () => AuthenticationRepository.instance.logout(),
//               icon: const Icon(CupertinoIcons.clear))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(BSizes.defaultSpace),
//           child: Column(
//             children: [
//               //Image

//               Image(
//                 image: const AssetImage(BImages.deliveredEmailIllustration),
//                 width: BHelperFunctions.screenWidth() * 0.6,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwSections,
//               ),

//               // Title & subtitle

//               Text(
//                 BTexts.confirmEmail,
//                 style: Theme.of(context).textTheme.headlineMedium,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwItems,
//               ),
//               Text(
//                 email ?? '',
//                 style: Theme.of(context).textTheme.labelLarge,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwItems,
//               ),
//               Text(
//                 BTexts.confirmEmailSubTitle,
//                 style: Theme.of(context).textTheme.labelMedium,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwSections,
//               ),

//               //Buttons
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () => controller.checkEmailVerificationStatus(),
//                   child: const Text(BTexts.tContinue),
//                 ),
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwItems,
//               ),

//               /// Create account
//               SizedBox(
//                 width: double.infinity,
//                 child: OutlinedButton(
//                   onPressed: () => controller.sendEmailVerification(),
//                   child: const Text(BTexts.resendEmail),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
