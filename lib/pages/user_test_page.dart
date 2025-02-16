import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/controllers/login_controller.dart';

@RoutePage()
class UserTestPage extends StatelessWidget {
  UserTestPage({super.key});
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: FadeInDown(
          animate: true,
          child: const Text(
            "Project Karna",
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: loginController.singleuserresponse.value.data?.length ?? 0,
          itemBuilder: (context, index) {
            // ignore: unnecessary_null_comparison
            return loginController.singleuserresponse.value == null
                ? const Center(child: Text("no data"))
                : ListTile(
                    title: Text(
                      loginController
                              .singleuserresponse.value.data?[index].name ??
                          '',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(loginController
                            .singleuserresponse.value.data?[index].domain ??
                        ''),
                    trailing: Text(
                      "Risk : ${loginController.singleuserresponse.value.data?[index].risk ?? ''}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  );
          }),
    );
  }
}
