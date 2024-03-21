import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class AddCardPayement extends StatelessWidget {
  const AddCardPayement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        centerTitle: true,
        showBackArrow: true,
        title: Text(
          "Add Cart Payment",
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              const Column(
                children: [
                  CustomTextField(
                    labelText: 'Name',
                    hintText: 'Enter you name',
                    //controller: payVM.txtName.value
                  ),
                  SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),
                  CustomTextField(
                    labelText: "Card Number",
                    hintText: "Enter you Card Number",
                    textInputType: TextInputType.phone,
                    //     controller: payVM.txtCardNumber.value
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomTextField(
                        labelText: "MM",
                        hintText: "MM",
                        textInputType: TextInputType.number,
                        // controller: payVM.txtMonth.value
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: CustomTextField(
                        labelText: "YYYY",
                        hintText: "Enter YYYY",
                        textInputType: TextInputType.number,
                        // controller: payVM.txtYear.value
                      ))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      //  payVM.serviceCallAdd(() {
                      //       Navigator.pop(context);
                      //     });
                    },
                    child: const Text('Add Cart')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
