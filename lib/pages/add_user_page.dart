import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/controllers/adduser_controller.dart';
import 'package:karna/controllers/login_controller.dart';
import 'package:karna/widgets/my_button.dart';

@RoutePage()
class AddUserPage extends StatelessWidget {
  AddUserPage({super.key});

  final AdduserController adduserController = Get.put(AdduserController());
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    final musictype = [
      "Select Music Type",
      "Pop",
      "Rock",
      "Classic",
    ];
    final listehrs = [
      "Select listen hours",
      "1hr",
      "2hr",
      "4hr",
      "8hr +",
    ];

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: FadeInUp(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add new Users",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                controller: adduserController.namecontroller.value,
                cursorColor: Colors.black,
                decoration: const InputDecoration().copyWith(
                  labelText: "Name",
                ),
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                controller: adduserController.agecontroller.value,
                cursorColor: Colors.black,
                decoration: const InputDecoration().copyWith(
                  labelText: "Age",
                ),
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Obx(
                () => Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        tileColor: Colors.white,
                        activeColor: const Color.fromARGB(255, 42, 166, 204),
                        contentPadding: const EdgeInsets.all(0),
                        value: adduserController.gender[0],
                        title: Text(adduserController.gender[0]),
                        groupValue: adduserController.curentgender.value,
                        onChanged: (value) {
                          adduserController.curentgender.value =
                              value.toString();
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        tileColor: Colors.white,
                        activeColor: const Color.fromARGB(255, 42, 166, 204),
                        contentPadding: const EdgeInsets.all(0),
                        value: adduserController.gender[1],
                        title: Text(adduserController.gender[1]),
                        groupValue: adduserController.curentgender.value,
                        onChanged: (value) {
                          adduserController.curentgender.value =
                              value.toString();
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Obx(
                () => Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        tileColor: Colors.white,
                        activeColor: const Color.fromARGB(255, 42, 166, 204),
                        contentPadding: const EdgeInsets.all(0),
                        value: adduserController.pro[0],
                        title: Text(adduserController.pro[0]),
                        groupValue: adduserController.curentpro.value,
                        onChanged: (value) {
                          adduserController.curentpro.value = value.toString();
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        tileColor: Colors.white,
                        activeColor: const Color.fromARGB(255, 42, 166, 204),
                        contentPadding: const EdgeInsets.all(0),
                        value: adduserController.pro[1],
                        title: Text(adduserController.pro[1]),
                        groupValue: adduserController.curentpro.value,
                        onChanged: (value) {
                          adduserController.curentpro.value = value.toString();
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                controller: adduserController.domaincontroler.value,
                cursorColor: Colors.black,
                decoration: const InputDecoration().copyWith(
                  labelText: "Domain or Collage Name",
                ),
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Obx(
                () => DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(20),
                    dropdownColor: Colors.grey.shade100,
                    value: adduserController.selectmusictype.value,
                    items: [
                      DropdownMenuItem(
                          value: musictype[0], child: Text(musictype[0])),
                      DropdownMenuItem(
                          value: musictype[1], child: Text(musictype[1])),
                      DropdownMenuItem(
                          value: musictype[2], child: Text(musictype[2])),
                      DropdownMenuItem(
                          value: musictype[3], child: Text(musictype[3])),
                    ],
                    onChanged: (value) {
                      adduserController.selectmusictype.value =
                          value.toString();
                    }),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Obx(
                () => DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(20),
                    dropdownColor: Colors.grey.shade100,
                    value: adduserController.selectlistenhr.value,
                    items: listehrs
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {
                      adduserController.selectlistenhr.value = value.toString();
                    }),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Obx(
                () => InkWell(
                    onTap: () {
                      adduserController.createuser(
                          loginController.phonecontroller.value.text, context);
                    },
                    child: MyButton(
                      title: 'Submit',
                      isloading: adduserController.isloadingbtn.value,
                    )),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom))
            ],
          ),
        ),
      ),
    );
  }
}
