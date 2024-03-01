import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../../models/credit_card_mock/credit_card.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      child: CreditCardWidget(
        cardNumber: listData[0].cardNumber,
        expiryDate: listData[0].expiryDate,
        cardHolderName: listData[0].cardHolderName,
        cvvCode: listData[0].cvvCode,
        showBackView: true,
        onCreditCardWidgetChange: (CreditCardBrand brand) {},
      ),
    );
  }
}
