import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/controllers/login_controller.dart';
import 'package:karna/widgets/my_button.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class PhoneAuthPage extends StatelessWidget {
  PhoneAuthPage({super.key});

  final LoginController loginController = Get.put(LoginController());

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
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PopupMenuButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    icon: const Icon(Icons.info_outline_rounded),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Frontend by Shivu'),
                              Text('Backend by sheshadri'),
                            ],
                          ),
                        )),
                      ];
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/Doctor.json', height: 180),
              ],
            ),
            Text(
              "Project Karna",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "Diagnosis and Enhance Hearing Effortlessly",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Obx(
              () => TextField(
                keyboardType: TextInputType.phone,
                controller: loginController.phonecontroller.value,
                cursorColor: Colors.black,
                maxLength: 10,
                decoration: const InputDecoration().copyWith(
                    labelText: "Phone Number",
                    prefixIcon: const Icon(Icons.call_rounded)),
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                if (loginController.phonecontroller.value.text.isNotEmpty) {
                  loginController.getuser();
                } else {
                  loginController.isloadingbtn.value = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      behavior: SnackBarBehavior.floating,
                      duration: const Duration(milliseconds: 1800),
                      dismissDirection: DismissDirection.up,
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height - 120,
                          left: 10,
                          right: 10),
                      content: const Text("Number can't be empty")));
                }
              },
              child: Obx(() => MyButton(
                    title: 'Submit',
                    isloading: loginController.isloadingbtn.value,
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
