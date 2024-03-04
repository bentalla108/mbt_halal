// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:csc_picker/csc_picker.dart';

class AddressForm extends StatelessWidget {
  const AddressForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomTextField(
                labelText: 'Address*',
              ),
            ),
            SizedBox(
              width: BSizes.spaceBtwItems,
            ),
            Expanded(
              child: CustomTextField(
                labelText: 'Address Complement',
              ),
            )
          ],
        ),
        SizedBox(
          height: BSizes.spaceBtwItems,
        ),
        CSCPicker(
          selectedItemStyle: const TextStyle().copyWith(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: BColors.secondary),
          dropdownItemStyle: TextStyle().copyWith(
              fontSize: BSizes.fontSizeMd, fontWeight: FontWeight.w400),
          dropdownHeadingStyle: TextStyle().copyWith(
              fontSize: BSizes.fontSizeMd, fontWeight: FontWeight.bold),
          showCities: true,
          showStates: true,
          citySearchPlaceholder: 'City',
          layout: Layout.horizontal,
          flagState: CountryFlag.ENABLE,
          onCountryChanged: (country) {},
          onStateChanged: (state) {},
          onCityChanged: (city) {},
          countryDropdownLabel: "*Country",
          stateDropdownLabel: "*State",
          cityDropdownLabel: "*City",
          dropdownDialogRadius: 20,
          searchBarRadius: 30,
        ),
        SizedBox(
          height: BSizes.spaceBtwItems,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomTextField(
                labelText: 'Zip*',
              ),
            ),
            SizedBox(
              width: BSizes.spaceBtwItems,
            ),
            Expanded(
              child: CustomTextField(
                labelText: 'Phone*',
              ),
            )
          ],
        ),
      ],
    );
  }
}
