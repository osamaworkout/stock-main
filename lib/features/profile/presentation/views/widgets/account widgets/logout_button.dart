import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LogoutAccountButton extends StatelessWidget {
  const LogoutAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            IconlyBroken.logout,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'logout',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
