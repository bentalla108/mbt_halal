import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class CheckoutForm extends StatelessWidget {
  const CheckoutForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Form(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(child: CustomTextField(labelText: "First name*")),
              Expanded(child: CustomTextField(labelText: "Last name*")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomTextField(labelText: "First name*")),
              Expanded(child: CustomTextField(labelText: "Last name*")),
            ],
          ),
        ],
      )),
    );
  }
}