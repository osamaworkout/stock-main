import 'package:flutter/material.dart';
import 'package:project1/core/widgets/app_colors.dart';
import '../../../../data/models/account_tile_model.dart';
import '../../../../data/models/user details model/user_details.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key, required this.accountItem}) : super(key: key);
  final UserDetailsModel accountItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        Icons.person_outline,
        size: 20,
        color: const Color(AppColors.kBlackColor),
      ),
      title: Text(
        accountItem.username,
        style: const TextStyle(
            fontSize: 18, color: Color(AppColors.kBlackColor)),
      ),
      trailing: const Icon(
        Icons.chevron_right_outlined,
        size: 20,
        color: Color(AppColors.kBlackColor),
      ),
      onTap: () {
      },
    );
  }
}
