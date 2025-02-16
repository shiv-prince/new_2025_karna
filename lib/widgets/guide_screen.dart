import 'package:flutter/material.dart';
import 'package:karna/app.dart';
import 'package:karna/common/routes/app_route.dart';
import 'package:karna/widgets/my_button.dart';
import 'package:lottie/lottie.dart';

class GuideScreen extends StatelessWidget {
  final PageController pageController;
  final int index;
  final String imagepath;
  final String body;

  const GuideScreen(
      {super.key,
      required this.pageController,
      required this.index,
      required this.imagepath,
      required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          index != 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {
                          pageController.previousPage(
                              duration: const Duration(milliseconds: 800),
                              curve: Easing.legacy);
                        },
                        child: const Text(
                          "Previous",
                          style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 42, 166, 204)),
                        )),
                  ],
                )
              : const SizedBox.shrink(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
          ),
          Center(
            // Wrap the Lottie animation in a Center widget
            child: Lottie.asset(imagepath, height: 150),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 0.8),
              child: Text(
                textAlign: TextAlign.center,
                body,
                maxLines: 3,
                overflow: TextOverflow.ellipsis, // Prevents overflow
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: index == 2
          ? InkWell(
              onTap: () {
                appRouter.navigate(EnterDbRoute());
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: MyButton(title: "Got it"),
              ),
            )
          : Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 42, 166, 204),
                  onPressed: () {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Easing.legacy);
                  },
                  child: const Icon(Icons.navigate_next_rounded)),
            ),
    );
  }
}
