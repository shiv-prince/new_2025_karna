import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';
import 'package:karna/api/dio_injection.dart';
import 'package:karna/app.dart';
import 'package:karna/common/routes/app_route.dart';
import 'package:karna/controllers/login_controller.dart';
import 'package:karna/widgets/my_button.dart';
import 'package:karna/widgets/user_list_card.dart';

@RoutePage()
class UserListPage extends StatelessWidget {
  UserListPage({super.key});

  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
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
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInLeft(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "List of Users",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextSpan(
                    text:
                        " (${loginController.getuserresponse.value.data?.length.toString()})",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: const Color.fromARGB(255, 42, 166, 204),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
            Expanded(
                child: FadeIn(
              duration: const Duration(milliseconds: 800),
              child: ListView.builder(
                  itemCount: loginController.getuserresponse.value.data?.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        loginController.singleuserresponse.value =
                            await restClient.getsingleuserresult(
                                loginController.phonecontroller.value.text,
                                loginController.getuserresponse.value
                                        .data?[index].name ??
                                    "");
                        appRouter.navigate(UserTestRoute());
                      },
                      child: UserListCard(
                          name: loginController
                                  .getuserresponse.value.data?[index].name ??
                              ''),
                    );
                  }),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.01),
        child: InkWell(
          onTap: () {
            appRouter.navigate(AddUserRoute());
          },
          child: const MyButton(
            title: 'Add new User',
          ),
        ),
      ),
    );
  }
}
