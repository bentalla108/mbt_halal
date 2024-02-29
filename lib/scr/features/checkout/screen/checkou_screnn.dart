import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/features/checkout/widgets/payment_methode.dart';

import '../widgets/adress.dart';
import '../widgets/checkou_form.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int currentStep = 0;

  List<Step> steps() => [
        Step(
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 0,
            title: const Text("Personal Infomation"),
            content: const CheckoutForm()),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: const Text("Addresses"),
            content: const AddressForm()),
        Step(
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 2,
          title: const Text("Shipping method"),
          content: Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
        ),
        Step(
            state: currentStep > 3 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 3,
            title: const Text("Payment"),
            content: PaymentMethod()),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        centerTitle: true,
        showBackArrow: true,
        title: Text('Checkout'),
      ),
      body: SizedBox(
        height: BDeviceUtils.getScreenHeight(),
        child: Stepper(
          onStepTapped: (step) => setState(() {
            currentStep = step;
          }),
          currentStep: currentStep,
          onStepContinue: () {
            if (currentStep < steps().length - 1) {
              setState(() => currentStep += 1);
            }
          },
          onStepCancel:
              currentStep > 0 ? () => setState(() => currentStep -= 1) : null,
          steps: steps(),
        ),
      ),
    );
  }
}
