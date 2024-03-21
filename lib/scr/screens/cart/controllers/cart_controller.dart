import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/core/utils/http/endpoint.dart';
import 'package:mtb_halal/scr/core/utils/http/http_service_call.dart';
import 'package:mtb_halal/scr/models/cart_item.dart';

import '../../../core/utils/helpers/helper_functions.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();

  final RxList<CartItemModel> listArr = <CartItemModel>[].obs;
  final cartTotalPrice = "0.0".obs;
  final discountAmount = "0.0".obs;

  @override
  void onInit() {
    super.onInit();

    apiCall();
  }

  void apiCall() {
    BHelperFunctions.showHUD();
    HttpServiceCall.get(SVKey.svCartList, withSuccess: (resObj) async {
      BHelperFunctions.hideHUD();
      var payload = resObj[KKey.payload] as List<dynamic>? ?? [];

      if (payload.isNotEmpty) {
        var listDataArr = (payload as List? ?? []).map((oObj) {
          return CartItemModel.fromMap(oObj);
        }).toList();

        listArr.value = listDataArr;

        cartTotalPrice.value = resObj["cost"] as String? ?? "0.0";
        update();
      } else {
        listArr.value = [];
        update();
      }
    });
  }

  static void addToCart(
      double quantity, String productId, VoidCallback didDone) {
    BHelperFunctions.showHUD();
    HttpServiceCall.post(
        SVKey.svAddToCart, {"quantity": quantity, "productId": productId},
        withSuccess: (resObj) async {
      BHelperFunctions.hideHUD();

      Get.snackbar(BTextsConstant.appName, resObj[KKey.message].toString());
      didDone();
    }, failure: (err) async {
      BHelperFunctions.hideHUD();
      Get.snackbar(BTextsConstant.appName, err.toString());
    });
  }

  void updateCart(CartItemModel cObj, double newQuantity) {
    // BHelperFunctions.showHUD();
    HttpServiceCall.patch(SVKey.svUpdateCart, {
      "cartId": cObj.cartId,
      "quantity": newQuantity,
      "productId": cObj.productId
    }, withSuccess: (resObj) async {
      // BHelperFunctions.hideHUD();

      // Get.snackbar(BTextsConstant.appName, resObj[KKey.message].toString());
      apiCall();
    }, failure: (err) async {
      // BHelperFunctions.hideHUD();
      Get.snackbar(BTextsConstant.appName, err.toString());
    });
  }

  void delToCart(CartItemModel cObj) {
    BHelperFunctions.showHUD();
    HttpServiceCall.post(SVKey.svRemoveCart, {
      "cartId": cObj.cartId,
      "productId": cObj.productId
    }, withSuccess: (resObj) async {
      BHelperFunctions.hideHUD();

      // Get.snackbar(BTextsConstant.appName, resObj[KKey.message].toString());
      apiCall();
    }, failure: (err) async {
      BHelperFunctions.hideHUD();
      Get.snackbar(BTextsConstant.appName, err.toString());
    });
  }
}
