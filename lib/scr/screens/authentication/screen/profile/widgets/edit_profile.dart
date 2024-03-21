import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import '../../../controllers/profile_controller/edit_profile_controller.dart';
import 'phone_number_section.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key, this.isAppbarNeeded, this.appBar})
      : super(key: key);
  final bool? isAppbarNeeded;
  final PreferredSizeWidget? appBar;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();

  String dropdownValue = '';

  DateTime? selectedDate;
  final EditProfileController controller = Get.put(EditProfileController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (value) async {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: const BAppbar(
          centerTitle: true,
          showBackArrow: true,
          title: Text('Edit Information'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      //! Profile Image Picker
                      GestureDetector(
                        onTap: () {
                          controller.pickImage();
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(50)),
                          padding: const EdgeInsets.all(4),
                          child: Obx(() {
                            return CustomImageView(
                                width: 90,
                                height: 90,
                                fit: BoxFit.cover,
                                radius: BorderRadius.circular(80),
                                imagePath: controller.pickedFile.value.path);
                          }),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),
                  CustomTextField(
                    controller: controller.usernameController.value,
                    labelText: BTextsConstant.username,
                    prefixIconName: Iconsax.user,
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),
                  CustomTextField(
                    controller: controller.usernameController.value,
                    labelText: BTextsConstant.lastName,
                    prefixIconName: Iconsax.user,
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),
                  CustomTextField(
                    controller: controller.emailController.value,
                    labelText: BTextsConstant.email,
                    prefixIconName: Icons.mail_outline_outlined,
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),
                  const PhoneNumberSection(),
                  const SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(BSizes.cardRadiusMd)),
                    ),
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                    child: IntrinsicWidth(
                      child: DropdownButton<String>(
                        value: dropdownValue.isNotEmpty ? dropdownValue : null,
                        elevation: 16,
                        hint: const Text(
                          'Gender',
                        ),
                        isExpanded: true,
                        underline: Container(
                          height: 0,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue.toString();
                          });
                        },
                        items: <String>['Male', 'Female', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
