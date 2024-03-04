import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import '../../../common/widgets/products/filter_row.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  List selectArr = [];

  List filterCatArr = [
    {
      "id": "1",
      "name": "Fresh  Fruit",
    },
    {
      "id": "2",
      "name": "Backing & cooking",
    },
    {
      "id": "3",
      "name": "Milk, Butter & Eggs",
    },
    {
      "id": "4",
      "name": "Fresh Vegetables",
    },
    {
      "id": "5",
      "name": "Spreads & Margarines",
    },
    {
      "id": "6",
      "name": "Fresh & Custard",
    },
  ];

  List filterCountryArr = [
    {
      "id": "1",
      "name": "France",
    },
    {
      "id": "2",
      "name": "Pays-Bas",
    },
    {
      "id": "3",
      "name": "USA",
    },
    {
      "id": "4",
      "name": "Africa",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: SectionHeading(
                      title: "Categories",
                    )),
                Column(
                  children: filterCatArr.map((fObj) {
                    return FilterRow(
                      fObj: fObj,
                      isSelect: selectArr.contains(fObj),
                      onPressed: () {
                        if (selectArr.contains(fObj)) {
                          selectArr.remove(fObj);
                        } else {
                          selectArr.add(fObj);
                        }
                        setState(() {});
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Divider(),
                const SizedBox(
                  height: 7,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: SectionHeading(
                      title: "Made in",
                    )),
                Column(
                  children: filterCountryArr.map((fObj) {
                    return FilterRow(
                      fObj: fObj,
                      isSelect: selectArr.contains(fObj),
                      onPressed: () {
                        if (selectArr.contains(fObj)) {
                          selectArr.remove(fObj);
                        } else {
                          selectArr.add(fObj);
                        }
                        setState(() {});
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                child: const Text("Apply Filter"), onPressed: () {}))
      ],
    );
  }
}
