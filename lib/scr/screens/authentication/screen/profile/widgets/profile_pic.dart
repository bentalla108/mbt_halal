import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(50)),
              padding: const EdgeInsets.all(4),
              child: CustomImageView(
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(80),
                  imagePath: ImageConstant.user),
            ),
            Positioned(
              right: 0,
              bottom: 10,
              child: SizedBox(
                height: 35,
                width: 35,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey.withOpacity(0.7),
                  ),
                  onPressed: () {},
                  child: const Icon(size: 25, Icons.edit),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
