import 'package:flutter/material.dart';
import 'package:project1/core/widgets/app_colors.dart';
import '../../../../data/models/account_tile_model.dart';
import 'listview_item.dart';

class AccountListview extends StatelessWidget {
  const AccountListview({super.key, required this.accountItems, this.onTap});
  final List<AccountModel> accountItems;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListviewItem(
          onTap: () {
            accountItems[index].onTap();
          },
          accountItem: accountItems[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 1,
          color: Color(AppColors.kGreyColor),
        );
      },
      itemCount: accountItems.length,
    );
  }
}
