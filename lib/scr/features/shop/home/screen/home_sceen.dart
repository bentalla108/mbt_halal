// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

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

      child: Column(
        children: [
          //! Home Head Section
          const HomeHeadSection(),

          PubSection(img: img, details: details),

          Padding(
            padding: EdgeInsets.all(BSizes.md),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SectionHeading(
                  title: 'Best hightlight',
                ),
                SizedBox(
                  height: 10,
                ),

                

                CustomScrollView()
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) => SingleProductWidget(
                    product: MockProductModel.random(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
