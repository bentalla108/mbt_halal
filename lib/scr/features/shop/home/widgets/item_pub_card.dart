import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class ItemPubCard extends StatelessWidget {
  final String itemName, image, description;

  const ItemPubCard(
      {super.key,
      required this.itemName,
      required this.image,
      required this.description});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: SizedBox(
        height: height * 0.3,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                  child: Container(
                    height: constraints.maxHeight * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.orange[600],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -36,
                  bottom: 40,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    image,
                    width: constraints.maxWidth * 0.65,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Positioned(
                  left: -30,
                  bottom: 50,
                  child: Image.asset(
                    // IMAGE à afficher debordement gauche
                    fit: BoxFit.cover,
                    image,
                    width: constraints.maxWidth * 0.6,
                  ),
                ),
                Positioned(
                  right: 50,
                  top: 30,
                  child: Material(
                    elevation: 0,
                    color: Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(5),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CustomImageView(
                          height: 32 * 1.5,
                          width: 73 * 1.5,
                          imagePath: ImageConstant.whiteLogo),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        itemName,
                        style: const TextStyle(
                          fontSize: 32,
                          fontFamily: 'MouseMemoirs',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          description,
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
