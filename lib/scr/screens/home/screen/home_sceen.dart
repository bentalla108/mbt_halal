// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/screens/home/widgets/product_scrool.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = "/HomeScreen";

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
      // scrollDirection: Axis.horizontal,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
      ),
    );
  }
}
