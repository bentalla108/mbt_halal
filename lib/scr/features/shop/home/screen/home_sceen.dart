// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/core/utils/helpers/size_utils.dart';

import '../../../../models/mock_model/product.dart';
import '../widgets/home_head_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List img = [
      'assets/images/img/3.png',
      'assets/images/img/2.png',
      'assets/images/img/1.png',
    ];

    // List names = [
    //   'Sandwich',
    //   'Sausages Bun',
    //   'Family Pack',
    // ];

    String details =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt';
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,

      child: Padding(
        padding: EdgeInsets.all(BSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //! Home Head Section
            HomeHeadSection(),

            BannerSection(img: img, details: details),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                SectionHeading(
                  title: 'Best hightlight',
                ),
                SizedBox(
                  height: 10,
                ),
                ProductSCrool(),
                SizedBox(
                  height: 30,
                ),
                SectionHeading(
                  title: 'See our Latest products',
                ),
                SizedBox(
                  height: 10,
                ),
                ProductSCrool(),
                SizedBox(
                  height: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProductSCrool extends StatelessWidget {
  const ProductSCrool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, index) => SizedBox(
          width: BSizes.md,
        ),
        itemBuilder: (context, index) => SingleProductWidget(
          product: MockProductModel.random(),
        ),
      ),
    );
  }
}
