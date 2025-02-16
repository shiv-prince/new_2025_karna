import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/api/dio_injection.dart';
import 'package:karna/app.dart';
import 'package:karna/common/routes/app_route.dart';
import 'package:karna/models/get_user_response.dart';
import 'package:karna/models/single_user_result.dart';

class LoginController extends GetxController {
  RxBool isloadingbtn = false.obs;

  var getuserresponse = GetUserResponse().obs;
  var singleuserresponse = SingleUserTestResult().obs;

  var phonecontroller = TextEditingController().obs;

  void getuser() async {
    isloadingbtn.value = true;

    getuserresponse.value =
        await restClient.getuser(int.parse(phonecontroller.value.text));
    if (getuserresponse.value.status == 200) {
      isloadingbtn.value = false;
      log(getuserresponse.value.status.toString());
      appRouter.navigate(UserListRoute());
    } else {
      isloadingbtn.value = false;
      log(getuserresponse.value.status.toString());
      appRouter.navigate(AddUserRoute());
    }
  }
}
