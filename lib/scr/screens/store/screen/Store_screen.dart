// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/common/widgets/appbar/tabbar.dart';
import 'package:mbt_halal/scr/common/widgets/container/search_container.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

import '../widgets/all_products.dart';
import '../widgets/filter.dart';
import '../widgets/tabbar_widget.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});
  static String routeName = "StoreScreen";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: BAppbar(
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
              padding: EdgeInsets.all(BSizes.md),
              child: TabBarView(children: [
                AllProductsScreen(),
                FilterView(),
                FilterView(),
                AllProductsScreen(),
              ]),
            )));
  }
}
