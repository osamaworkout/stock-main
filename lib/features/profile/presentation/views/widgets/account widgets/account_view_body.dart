import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:project1/core/utils/app_routes.dart';
import 'package:project1/core/widgets/app_colors.dart';
import '../../../../data/models/account_tile_model.dart';
import '../../../../data/models/user details model/user_details.dart';
import 'account_list_view.dart';
import 'user_details_listtile.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key, required this.user});
  final UserDetailsModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          UserDetailsListTile(
            user: user,
          ),
          const Divider(
            height: 1,
            color: Color(AppColors.kGreyColor),
          ),
          Expanded(
              child: AccountListview(
            accountItems: [
              AccountModel(
                  title: 'Orders',
                  leadingIcon: Icons.local_mall_outlined,
                  onTap: () {}),
              AccountModel(
                  title: 'My Details',
                  leadingIcon: FontAwesomeIcons.addressCard,
                  onTap: () {}),
              AccountModel(
                  title: 'Delivery Address',
                  leadingIcon: Icons.location_on_outlined,
                  onTap: () {}),
              AccountModel(
                  title: 'Payment Methods',
                  leadingIcon: FontAwesomeIcons.creditCard,
                  onTap: () {}),
              AccountModel(
                  title: 'Notifications',
                  leadingIcon: Icons.notification_important_outlined,
                  onTap: () {}),
              AccountModel(
                  title: 'Help',
                  leadingIcon: Icons.help_outline_outlined,
                  onTap: () {}),
              AccountModel(
                  title: 'About',
                  leadingIcon: Icons.info_outlined,
                  onTap: () {}),
              AccountModel(
                  title: 'My Orders',
                  leadingIcon: Icons.store,
                  onTap: () {
                    GoRouter.of(context).push(AppRoutes.checkEmail);
                  }),
              AccountModel(
                  title: 'LogOut',
                  leadingIcon: Icons.info_outlined,
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRoutes.loginView);
                  }),
            ],
          )),
          // const Gap(10),
          // const LogoutAccountButton(),
          // const Gap(100)
        ],
      ),
    );
  }
}
