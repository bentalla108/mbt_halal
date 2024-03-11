import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class SocialInfo extends StatelessWidget {
  const SocialInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // SocialTitle(),
      SizedBox(
        height: BSizes.spaceBtwItems,
      ),
      CustomTextField(labelText: 'First name*'),
      SizedBox(
        height: BSizes.spaceBtwInputFields,
      ),
      CustomTextField(labelText: 'Last name*'),
      SizedBox(
        height: BSizes.spaceBtwInputFields,
      ),
      CustomTextField(labelText: 'Email*'),
      SizedBox(
        height: BSizes.spaceBtwInputFields,
      ),
      CustomTextField(labelText: 'Phone*')
    ]));
  }
}

class SocialTitle extends StatelessWidget {
  const SocialTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Social title '),
          Row(
            children: [
              Row(children: [
                const Text('Mr.'),
                Radio(value: true, groupValue: 1, onChanged: (value) {}),
              ]),
              Row(children: [
                const Text('Mrs.'),
                Radio(value: false, groupValue: 1, onChanged: (value) {}),
              ]),
            ],
          ),
        ]),
      ],
    );
  }
}
