// import 'package:b_store/features/authentication/screen/login_screen/login_screen.dart';
// import 'package:b_store/utils/constants/image_strings.dart';
// import 'package:b_store/utils/constants/sizes.dart';
// import 'package:b_store/utils/constants/text_strings.dart';
// import 'package:b_store/utils/helpers/helper_functions.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ResetPasswordScreen extends StatelessWidget {
//   const ResetPasswordScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Get.back();
//               },
//               icon: const Icon(CupertinoIcons.clear))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(BSizes.defaultSpace),
//           child: Column(
//             children: [
//               Image(
//                 image: const AssetImage(BImages.deliveredEmailIllustration),
//                 width: BHelperFunctions.screenWidth() * 0.6,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwSections,
//               ),

//               // Title & subtitle

//               //Title

//               Text(
//                 BTexts.changeYourPasswordTitle,
//                 style: Theme.of(context).textTheme.headlineMedium,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwItems,
//               ),

//               // SubTitle

//               Text(
//                 BTexts.changeYourPasswordSubTitle,
//                 style: Theme.of(context).textTheme.labelMedium,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwSections,
//               ),

//               const SizedBox(
//                 height: BSizes.spaceBtwItems,
//               ),

//               //Buttons
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Get.to(() => const LoginScreen());
//                   },
//                   child: const Text(BTexts.done),
//                 ),
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwItems,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 child: OutlinedButton(
//                   onPressed: () {},
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
