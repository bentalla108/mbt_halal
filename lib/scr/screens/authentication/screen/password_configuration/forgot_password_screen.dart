// import 'package:b_store/commons/widgets/custom_textfield/custom_field_text.dart';
// import 'package:b_store/features/authentication/screen/login_screen/login_screen.dart';
// import 'package:b_store/features/authentication/screen/password_configuration/reset_password_screen.dart';
// import 'package:b_store/utils/constants/sizes.dart';
// import 'package:b_store/utils/constants/text_strings.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

// class ForgotPasswordScreen extends StatelessWidget {
//   const ForgotPasswordScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Get.offAll(() => const LoginScreen());
//               },
//               icon: const Icon(CupertinoIcons.clear))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(BSizes.defaultSpace),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Title & subtitle

//               //Title

//               Text(
//                 BTexts.forgetPasswordTitle,
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwItems,
//               ),

//               // SubTitle

//               Text(
//                 BTexts.forgetPasswordSubTitle,
//                 style: Theme.of(context).textTheme.labelMedium,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwSections,
//               ),
//               const SizedBox(
//                 height: BSizes.spaceBtwInputFields / 2,
//               ),
//               //CustomTextField

//               const CustomTextField(
//                 labelText: BTexts.email,
//                 prefixIconName: Iconsax.direct_right,
//               ),

//               const SizedBox(
//                 height: BSizes.spaceBtwItems,
//               ),

//               //Buttons
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () => Get.off(() => const ResetPasswordScreen()),
//                   child: const Text(BTexts.submit),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
