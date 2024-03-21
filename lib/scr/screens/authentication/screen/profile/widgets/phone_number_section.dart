import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_phone_number.dart';

///A Phone Section

class PhoneNumberSection extends StatelessWidget {
  const PhoneNumberSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPhoneNumber(
      country: CountryPickerUtils.getCountryByPhoneCode('221'),
      controller: null,
      onTap: (Country value) {},
    );
  }
}
