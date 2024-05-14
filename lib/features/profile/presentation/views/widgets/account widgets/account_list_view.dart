import 'package:flutter/material.dart';
import 'package:project1/core/widgets/app_colors.dart';
import '../../../../data/models/account_tile_model.dart';
import 'listview_item.dart';

class AccountListView extends StatelessWidget {
  const AccountListView({Key? key, required this.accountItems}) : super(key: key);
  final List<AccountModel> accountItems;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListViewItem(
          accountItem: accountItems[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: 1,
          color: const Color(AppColors.kGreyColor),
        );
      },
      itemCount: accountItems.length,
    );
  }
}
