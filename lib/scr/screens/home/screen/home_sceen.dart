// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/screens/home/controllers/home_controller.dart';

import '../../../common/widgets/products/product_cell.dart';
import '../widgets/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = "/HomeScreen";

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    WidgetsBinding.instance
        .addPostFrameCallback((_) => homeController.apiCall());

    var product = homeController.lastProductArr;
    List img = [
      'assets/images/img/3.png',
      'assets/images/img/2.png',
      'assets/images/img/1.png',
    ];

    String details =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt';
    return Scaffold(
      appBar: BAppbar(
        appBarSpacing: false,
        showBackArrow: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              BTextsConstant.welcomBack,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: BColors.textPrimary),
            ),
            Text(
              BTextsConstant.name,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: BColors.textPrimary),
            ),
          ],
        ),
        actions: const [
          Icon(
            Iconsax.search_normal,
            size: 24,
          )
        ],
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        dispose: (_) => Get.delete<HomeController>(),
        builder: (homeController) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(BSizes.md),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BannerSection(img: img, details: details),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: BSizes.spaceBtwSections,
                      ),
                      SectionHeading(
                        title: 'Categorie',
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      //! Categorie sections
                      CategoryHomeWidgets(),
                      SizedBox(
                        height: BSizes.spaceBtwSections,
                      ),

                      SectionHeading(
                        title: 'Best hightlight',
                      ),

                      ProductCell(
                        product: product,
                      ),
                      SizedBox(
                        height: BSizes.spaceBtwSections,
                      ),
                      SectionHeading(
                        title: 'See our Latest products',
                      ),

                      ProductCell(
                        product: product,
                      ),
                      SizedBox(
                        height: BSizes.spaceBtwSections,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
