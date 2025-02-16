import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/app.dart';
import 'package:karna/common/routes/app_route.dart';
import 'package:karna/controllers/adduser_controller.dart';
import 'package:karna/controllers/enterdb_controller.dart';
import 'package:karna/controllers/login_controller.dart';
import 'package:karna/widgets/my_button.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class EnterDbPage extends StatelessWidget {
  EnterDbPage({super.key});

  final EnterdbController enterdbController = Get.put(EnterdbController());
  final AdduserController adduserController = Get.find();
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Center(
                child: Lottie.asset('assets/Medical Result.json', height: 150)),
            SizedBox(
              height: height * 0.1,
            ),
            Text(
              "Project Karna",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "Enter the value displayed on the mankin display",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Obx(
              () => TextField(
                controller: enterdbController.dbacontroller.value,
                cursorColor: Colors.black,
                decoration: const InputDecoration().copyWith(
                  labelText: "Decible Value",
                ),
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
            const Spacer(),
            Obx(
              () => InkWell(
                onTap: () async {
                  enterdbController.name.value =
                      adduserController.namecontroller.value.text;
                  enterdbController.number.value =
                      loginController.phonecontroller.value.text;

                  enterdbController.musichours.value =
                      adduserController.selectlistenhr.value;
                  enterdbController.musictype.value =
                      adduserController.selectmusictype.value;
                  if ((adduserController.selectlistenhr.value.contains('8') &&
                          int.parse(
                                  enterdbController.dbacontroller.value.text) >=
                              90) ||
                      (adduserController.selectlistenhr.value.contains("4") &&
                          int.parse(
                                  enterdbController.dbacontroller.value.text) >=
                              95) ||
                      (adduserController.selectlistenhr.value.contains("2") &&
                          int.parse(
                                  enterdbController.dbacontroller.value.text) >=
                              100) ||
                      (adduserController.selectlistenhr.value.contains("1") &&
                          int.parse(
                                  enterdbController.dbacontroller.value.text) >=
                              105)) {
                    enterdbController.urisk.value = 'Yes';
                    appRouter.navigate(const IsRiskRoute());
                    enterdbController.insertrecord();
                    enterdbController.isloadingbtn.value = false;
                  } else {
                    enterdbController.urisk.value = 'No';
                    enterdbController.insertrecord();
                    appRouter.navigate(const IsNoRiskRoute());
                    enterdbController.isloadingbtn.value = false;
                  }
                },
                child: MyButton(
                  title: 'Submit',
                  isloading: enterdbController.isloadingbtn.value,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
