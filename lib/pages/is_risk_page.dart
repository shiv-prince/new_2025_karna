import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/app.dart';
import 'package:karna/common/routes/app_route.dart';
import 'package:karna/widgets/my_button.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class IsRiskPage extends StatelessWidget {
  const IsRiskPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Your in risk",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Contact",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 42, 166, 204),
                              decorationStyle: TextDecorationStyle.double,
                              decorationColor:
                                  Color.fromARGB(255, 42, 166, 204),
                              decoration: TextDecoration.underline),
                        )),
                  ],
                ),
                Lottie.asset("assets/Anxious patient.json"),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                      textAlign: TextAlign.center,
                      "Your listening for 10hr in 90 DBA is not good for your health"),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  "Risk Table",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/info.png",
                  height: height * 0.4,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Get.reset();
                    appRouter.navigate(PhoneAuthRoute());
                  },
                  child: const MyButton(title: "Back to Home"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
