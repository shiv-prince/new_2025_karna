import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/api/dio_injection.dart';
import 'package:karna/app.dart';
import 'package:karna/common/routes/app_route.dart';
import 'package:karna/models/create_user.dart';
import 'package:karna/models/create_user_response.dart';

class AdduserController extends GetxController {
  List<String> gender = ["Male", "Female"];
  List<String> pro = ["Student", "Work"];

  RxBool isloadingbtn = false.obs;

  RxString curentgender = 'Male'.obs;
  RxString curentpro = 'Student'.obs;
  RxString selectmusictype = 'Select Music Type'.obs;
  RxString selectlistenhr = 'Select listen hours'.obs;

  var namecontroller = TextEditingController().obs;
  var agecontroller = TextEditingController().obs;
  var domaincontroler = TextEditingController().obs;

  var createuserresponse = CreateUserResponse().obs;
  void createuser(String num, BuildContext ctx) async {
    isloadingbtn.value = true;

    // Create a user
    final user = CreateUser(
      name: namecontroller.value.text,
      cNumber: num,
      age: int.parse(agecontroller.value.text),
      gender: curentgender.value,
      domain: domaincontroler.value.text,
      profession: curentpro.value,
    );

    try {
      createuserresponse.value = await restClient.createuser(user.toJson());

      if (createuserresponse.value.status == 200) {
        isloadingbtn.value = false;
        appRouter.navigate(UserGuideRoute());
      } else if (createuserresponse.value.status == 422) {
        isloadingbtn.value = false;

        // Safely access the namecontroller's value
        String userName = namecontroller.value.text;
        if (ctx.mounted) {
          ScaffoldMessenger.of(ctx).showSnackBar(
              SnackBar(content: Text("$userName is already an existing user")));
        }
      } else {
        isloadingbtn.value = false;

        String userName = namecontroller.value.text;

        if (ctx.mounted) {
          ScaffoldMessenger.of(ctx).showSnackBar(
              SnackBar(content: Text("$userName is already an existing user")));
        }
      }
    } catch (e) {
      isloadingbtn.value = false;
      Get.rawSnackbar(
          title: "Error", message: "Something went wrong. Please try again.");
      log("Error: $e");
    }
  }
}
