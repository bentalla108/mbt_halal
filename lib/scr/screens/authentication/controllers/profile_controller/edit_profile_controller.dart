import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/utils/constants/image_constant.dart';
import '../../../../core/utils/helpers/helper_functions.dart';

class EditProfileController extends GetxController {
  final emailController = TextEditingController().obs;

  final lastNameController = TextEditingController().obs;

  final usernameController = TextEditingController().obs;

  final firstNameController = TextEditingController().obs;

  final phoneNumberController = TextEditingController().obs;
  final userDateOfBirthController = TextEditingController();
  DateTime? initialDate;

  final Rx<XFile> pickedFile = XFile(ImageConstant.user).obs;

  Future pickImage() async {
    try {
      ImagePicker picker = ImagePicker();
      final imagePick = await picker.pickImage(source: ImageSource.gallery);

      if (imagePick == null) {
        return pickedFile;
      }

      final imageTemp = XFile(imagePick.path);

      pickedFile.value = imageTemp;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  void selectDateAndTime(BuildContext context) async {
    try {
      final selectedDate = await showDatePicker(
        context: context,
        initialDate: initialDate ?? DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(3000),
        builder: (_, child) => child!,
      );

      if (selectedDate != null) {
        initialDate = selectedDate;
        userDateOfBirthController.value = TextEditingValue(
          text: BHelperFunctions.getFormattedDate(initialDate!),
        );
      }
    } catch (error) {
      BHelperFunctions.showHUD(status: error.toString());
    }
  }
}
