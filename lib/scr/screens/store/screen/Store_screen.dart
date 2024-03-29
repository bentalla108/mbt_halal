import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/common/widgets/appbar/tabbar.dart';
import 'package:mtb_halal/scr/common/widgets/container/search_container.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/screens/store/controllers/store_controller.dart';

import '../widgets/all_products.dart';
import '../widgets/filter.dart';
import '../widgets/tabbar_widget.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});
  static String routeName = "StoreScreen";

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => StoreController());
    var allProducts = StoreController.instance.allProduct;
    var productByPrice = StoreController.instance.listProductByPrice;

    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: const BAppbar(
              appBarSpacing: true,
              bottom: BTabBar(tabs: [
                TabWidget(
                  child: Text('All products'),
                ),
                TabWidget(
                  child: Text('Category'),
                ),
                TabWidget(
                  child: Text('Brand'),
                ),
                TabWidget(
                  child: Text('Price'),
                ),
              ]),
              showBackArrow: false,
              centerTitle: true,
              title: BSearchContainer(
                text: 'Search in store ...',
                showBorder: true,
                padding: EdgeInsets.zero,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(BSizes.md),
              child: TabBarView(children: [
                AllProductsScreen(
                  product: allProducts,
                ),
                const FilterView(),
                const FilterView(),
                AllProductsScreen(
                  product: productByPrice,
                )
              ]),
            )));
  }
}
