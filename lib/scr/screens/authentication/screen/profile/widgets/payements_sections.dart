import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:nb_utils/nb_utils.dart';

import 'add_payement.dart';

class EditPayment extends StatefulWidget {
  const EditPayment({super.key});

  @override
  EditPaymentState createState() => EditPaymentState();
}

class EditPaymentState extends State<EditPayment> {
  final List<String> paymentList = [
    'Card Credit/Debit',
    'Paypal',
    '.... .... .... ....4656'
  ];
  final List<String> paymentImageList = [
    'assets/images/mastercard-2.png',
    'assets/images/paypal.png',
    'assets/images/ic_master_card.png',
  ];

  var payment = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        centerTitle: true,
        showBackArrow: true,
        title: Text('Payment Method'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              'Select the payment method you want to use',
            ),
            ListView.separated(
              shrinkWrap: true,
              controller: ScrollController(),
              itemCount: paymentList.length,
              padding: const EdgeInsets.all(16),
              separatorBuilder: (_, __) => const SizedBox(height: 10),
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: boxDecorationWithRoundedCorners(
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultRadius)),
                  backgroundColor: BColors.grey,
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: RadioListTile(
                  visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity),
                  title: Row(
                    children: [
                      Image.asset(paymentImageList[index],
                          height: 30, width: 30, fit: BoxFit.contain),
                      const SizedBox(width: 16),
                      Text(
                        paymentList[index],
                      ),
                    ],
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: paymentList[index],
                  groupValue: payment,
                  activeColor: BColors.secondary,
                  onChanged: (value) {
                    setState(() {
                      payment = value.toString();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => AddCardPayement()),
                  child: const Text('Add Payement')),
            )
          ],
        ),
      ),
    );
  }
}
