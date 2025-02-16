import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/api/dio_injection.dart';
import 'package:karna/models/create_user_response.dart';
import 'package:karna/models/inset_user_test.dart';

class EnterdbController extends GetxController {
  RxBool isloadingbtn = false.obs;
  RxString name = ''.obs;
  RxString number = ''.obs;
  RxString urisk = ''.obs;
  RxString musictype = ''.obs;
  RxString musichours = ''.obs;

  var dbacontroller = TextEditingController().obs;

  var response = CreateUserResponse().obs;

  void insertrecord() async {
    var result = InserUserTest(
        uName: name.value,
        uNumber: number.value,
        uDecibel: int.parse(dbacontroller.value.text),
        uRisk: urisk.value,
        hoursListening: musichours.value.numericOnly(),
        musicType: musictype.value.numericOnly());

    isloadingbtn.value = true;
    response.value = await restClient.insertuserresult(result.toJson());
  }
}
