import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  static String routeName = "initScreen";

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
              0.5,
              1.0
            ],
                colors: [
              const Color(0xFF018B47),
              const Color(0xFFD4BA06).withOpacity(0.48)
            ])),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            CustomImageView(
              width: 139,
              height: 61,
              imagePath: ImageConstant.whiteLogo,
            ),
            const SizedBox(
              height: 120,
            ),
            Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.vectorImg)),
                ),
                child: Transform.translate(
                  offset: const Offset(0, -85),
                  child: CustomImageView(
                    margin: const EdgeInsets.all(0),
                    width: 237,
                    height: 218,
                    imagePath: ImageConstant.splahsImg,
                  ),
                )),
            Transform.translate(
              offset: const Offset(0, -20),
              child: Text(
                BTextsConstant.intro,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: BColors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            GestureDetector(
              onTap: () => Get.off(() => const NavigationMenu()),
              child: Container(
                width: 115,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: BColors.white.withOpacity(0.9),
                ),
                child: Center(
                    child: Text(
                  'Let’s explore',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
