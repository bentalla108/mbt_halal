import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    super.key,
    required this.img,
    required this.details,
  });

  final List img;
  final String details;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.v,
      ),
      items: [
        CustomImageView(
          // width: MediaQuery.of(context).size.width,
          imagePath: ImageConstant.banner1,
        ),
        CustomImageView(
          imagePath: ImageConstant.banner2,
        )
      ],
    );
  }
}
