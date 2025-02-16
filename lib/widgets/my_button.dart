import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final bool isloading;
  final String title;
  const MyButton({super.key, this.isloading = false, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 42, 166, 204),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isloading == false
              ? Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              : const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
        ],
      ),
    );
  }
}
