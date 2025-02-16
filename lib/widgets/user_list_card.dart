import 'package:flutter/material.dart';

class UserListCard extends StatelessWidget {
  final String name;
  const UserListCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shadowColor: Colors.grey.shade100,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Icon(Icons.navigate_next_rounded),
          ],
        ),
      ),
    );
  }
}
