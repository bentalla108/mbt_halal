import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

import '../../checkout/screen/checkou_screnn.dart';
import '../widgets/cart_item_row.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});
  static String routeName = "cartScreen";

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.separated(
              padding: const EdgeInsets.all(BSizes.defaultSpace),
              // itemCount: cartVM.listArr.length,
              itemCount: 6,
              separatorBuilder: (context, index) => const DottedLine(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    lineLength: double.infinity,
                    lineThickness: 1.0,
                    dashLength: 3.0,
                    dashColor: Colors.black,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
              itemBuilder: (context, index) {
                // var cObj = cartVM.listArr[index];
                return Padding(
                  padding: index == 5 // Configure for bottom
                      ? EdgeInsets.only(bottom: 90.v)
                      : const EdgeInsets.all(0),
                  child: CartItemRow(
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
                  ),
                );
              }),
          Column(
            mainAxisAlignment:
                true == true ? MainAxisAlignment.end : MainAxisAlignment.center,
            //  mainAxisAlignment: cartVM.listArr.isNotEmpty ? MainAxisAlignment.end :  MainAxisAlignment.center,
            children: [
              // cartVM.listArr.isNotEmpty
              true == true
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(-5, -5),
                                blurRadius: 2,
                                color: Colors.grey.withOpacity(0.5))
                          ],
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 20, right: 20, bottom: 15),
                        child: Column(
                          children: [
                            const DottedLine(
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.center,
                              lineLength: double.infinity,
                              lineThickness: 1.5,
                              dashLength: 5.0,
                              dashColor: Colors.black,
                              dashRadius: 0.0,
                              dashGapLength: 4.0,
                              dashGapColor: Colors.transparent,
                              dashGapRadius: 0.0,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total :',
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(
                                    "3400 \$",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            MaterialButton(
                              onPressed: () {
                                // Get.to(() => AddressForm());
                                Get.to(() => const CheckoutScreen());

                                // showCheckout();
                              },
                              height: 60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19)),
                              minWidth: double.maxFinite,
                              elevation: 0.1,
                              color: BColors.secondary,
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
                            ),
                          ],
                        ),
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
