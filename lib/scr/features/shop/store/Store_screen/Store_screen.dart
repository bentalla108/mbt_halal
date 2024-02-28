// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/common/widgets/container/search_container.dart';
import 'package:mbt_halal/scr/common/widgets/grid_layout.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/core/utils/constants/sizes.dart';
import 'package:mbt_halal/scr/models/mock_model/product.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/container/rounded_container.dart';
import '../products_details_screen/widgets/store_head_section.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: BAppbar(
              showBackArrow: true,
              title: null,
              actions: [
                BSearchContainer(
                  text: 'Search in store,',
                  showBorder: true,
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  BGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return SingleProductWidget(
                            product: MockProductModel.random());
                      })
                ],
              ),
            )));
  }
}

class ToMake extends StatelessWidget {
  const ToMake({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(BSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //! Home Head Section
            const StoreHeadSection(),

            Container(
              padding: EdgeInsets.all(16),
              color: Colors.amber,
              height: 40,
              width: BDeviceUtils.getScreenWidth(context),
            ),

            BGridLayout(
              itemCount: 12,
              itemBuilder: (context, index) => SingleProductWidget(
                product: MockProductModel.random(),
              ),
            ),
          ],
        ));
  }
}
