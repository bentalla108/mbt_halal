import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/utils/helpers/helper_functions.dart';
import 'package:mtb_halal/scr/models/product.dart';

import '../../../core/utils/http/endpoint.dart';
import '../../../core/utils/http/http_service_call.dart';

class StoreController extends GetxController {
  static StoreController get instance => Get.find();

  final RxList<ProductModel> listProductByPrice = <ProductModel>[].obs;
  final RxList<ProductModel> allProduct = <ProductModel>[].obs;
  final RxBool isDesc = false.obs;

  @override
  void onInit() {
    super.onInit();

    apiCall();
  }

  void apiCall() {
    BHelperFunctions.showHUD();
    HttpServiceCall.get(SVKey.svProductsAll, withSuccess: (resObj) async {
      BHelperFunctions.hideHUD();
      var payload = resObj[KKey.payload] as List<dynamic>? ?? [];

      if (payload.isNotEmpty) {
        var listDataArr = (payload as List? ?? []).map((oObj) {
          return ProductModel.fromMap(oObj);
        }).toList();

        allProduct.value = List.from(listDataArr);

        listDataArr
            .sort((a, b) => (a.price as double).compareTo(b.price as double));

        listProductByPrice.value = listDataArr;

        update();
      } else {
        listProductByPrice.value = [];
        update();
      }
    });
  }
}
