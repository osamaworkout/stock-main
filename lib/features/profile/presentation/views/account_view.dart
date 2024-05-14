import 'package:flutter/material.dart';
import 'package:project1/core/widgets/app_colors.dart';
import 'package:project1/features/profile/presentation/views/widgets/account%20widgets/listview_item.dart';

import '../../data/models/user details model/user_details.dart';

class AccountView extends StatelessWidget {
  final UserDetailsModel userDetails;

  const AccountView({Key? key, required this.userDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<UserDetailsModel> accountItems = [
      UserDetailsModel(
        username: userDetails.username,
        name: userDetails.name,
        email: userDetails.email,
        password: userDetails.password,
      ),
    ];

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: UserDetailsWidget(
                user: userDetails,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: accountItems.length,
              itemBuilder: (context, index) {
                return ListViewItem(
                  accountItem: accountItems[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
