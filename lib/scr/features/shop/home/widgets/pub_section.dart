import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/features/shop/home/widgets/item_pub_card.dart';

class PubSection extends StatelessWidget {
  const PubSection({
    super.key,
    required this.img,
    required this.details,
  });

  final List img;
  final String details;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemBuilder: (context, item) => ItemPubCard(
          image: img[0],
          itemName: 'itemName',
          description: details,
        ),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
