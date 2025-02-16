import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/controllers/userguide_controller.dart';
import 'package:karna/widgets/guide_screen.dart';

@RoutePage()
class UserGuidePage extends StatelessWidget {
  UserGuidePage({super.key});

  final UserguideController userguideController =
      Get.put(UserguideController());

  final List<String> imagepaths = [
    "assets/Earphones.json",
    "assets/Bluetooth earphone.json",
    "assets/Done.json"
  ];
  final List<String> body = [
    "Connect your earphones with your mobile device and continue",
    "Set your prefer volume and insert one ear bud to the manikin",
    "All done now your ready to take the test please click on 'Got it' to start test"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: userguideController.controller.value,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Obx(
            () => GuideScreen(
              pageController: userguideController.controller.value,
              index: index,
              imagepath: imagepaths[index],
              body: body[index],
            ),
          );
        },
      ),
    );
  }
}
