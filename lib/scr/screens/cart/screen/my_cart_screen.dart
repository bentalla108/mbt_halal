import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/screens/checkout/widgets/adress_infos.dart';

import '../../../core/utils/constants/colors.dart';

import '../../checkout/screen/checkou_screnn.dart';
import '../widgets/cart_item_row.dart';
import '../widgets/checkout_view.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  // final cartVM = Get.put(CartViewModel());

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   Get.delete<CartViewModel>();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        centerTitle: true,
        title: Text(
          "My Cart",
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.separated(
              padding: const EdgeInsets.all(BSizes.defaultSpace),
              // itemCount: cartVM.listArr.length,
              itemCount: 4,
              separatorBuilder: (context, index) => const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
              itemBuilder: (context, index) {
                // var cObj = cartVM.listArr[index];
                return CartItemRow(
                  didDelete: () {},
                  didQtyAdd: () {},
                  didQtySub: () {},

                  // cObj: cObj,
                  // didQtyAdd: () {
                  //   cartVM.serviceCallUpdateCart(cObj, (cObj.qty ?? 0) + 1
                  // );
                  // },
                  // didQtySub: () {
                  //   var qty = cObj.qty ?? 0;
                  //   qty -= 1;

                  //   if (qty < 0) {
                  //     qty = 0;
                  //   }
                  //   cartVM.serviceCallUpdateCart(cObj, qty);
                  // },
                  // didDelete: () {
                  //   cartVM.serviceCallRemoveCart(cObj);
                  // },
                );
              }),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: true == true
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.center,
              //  mainAxisAlignment: cartVM.listArr.isNotEmpty ? MainAxisAlignment.end :  MainAxisAlignment.center,
              children: [
                // cartVM.listArr.isNotEmpty
                true == true
                    ? MaterialButton(
                        onPressed: () {
                          // Get.to(() => AddressForm());
                          Get.to(() => CheckoutScreen());

                          // showCheckout();
                        },
                        height: 60,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)),
                        minWidth: double.maxFinite,
                        elevation: 0.1,
                        color: BColors.primary,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Proceed checkout",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              child: const Text(
                                // "\$${cartVM.cartTotalPrice.value}",
                                "3400 \$",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const Text(
                        "Your Card is Empty",
                        style: TextStyle(
                            color: BColors.secondary,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }

//   void showCheckout() {
//     showModalBottomSheet(
//         backgroundColor: Colors.transparent,
//         isDismissible: false,
//         isScrollControlled: true,
//         context: context,
//         builder: (context) {
//           return const CheckoutView();
//         });
//   }
}
