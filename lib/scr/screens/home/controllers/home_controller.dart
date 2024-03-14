import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/core/utils/helpers/helper_functions.dart';
import 'package:mtb_halal/scr/core/utils/http/http_service_call.dart';

import '../../../core/utils/http/endpoint.dart';
import '../../../models/category_model.dart';
import '../../../models/product.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  // final RxList<ProductModel> offerArr = <ProductModel>[].obs;
  final RxList<ProductModel> bestSellingArr = <ProductModel>[].obs;
  final RxList<CategoryModel> categotyArr = <CategoryModel>[].obs;
  final RxList<ProductModel> lastProductArr = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    if (kDebugMode) {
      print("HomeViewModel Init ");
    }

    apiCall();
    apiCallCategory();
  }

  void apiCall() {
    BHelperFunctions.showHUD();
    HttpServiceCall.get(SVKey.svProductLatest, withSuccess: (resObj) async {
      BHelperFunctions.hideHUD();

      var payload = resObj[KKey.payload] as List<dynamic>? ?? [];

      var lastProductDataArr = (payload as List? ?? []).map((oObj) {
        return ProductModel.fromMap(oObj);
      }).toList();

      lastProductArr.value = lastProductDataArr;
    }, failure: (err) async {
      BHelperFunctions.hideHUD();
      Get.snackbar(BTextsConstant.appName, err.toString());
    });
  }

  void apiCallCategory() {
    BHelperFunctions.showHUD();
    HttpServiceCall.get(SVKey.svProductsCategory, withSuccess: (resObj) async {
      BHelperFunctions.hideHUD();

      var payload = resObj[KKey.payload] as List<dynamic>? ?? [];

      var categotyArrDataArr = (payload as List? ?? []).map((oObj) {
        return CategoryModel.fromJson(oObj);
      }).toList();

      categotyArr.value = categotyArrDataArr;
    }, failure: (err) async {
      BHelperFunctions.hideHUD();
      Get.snackbar(BTextsConstant.appName, err.toString());
    });
  }
}
