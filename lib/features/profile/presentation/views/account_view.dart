import 'package:flutter/material.dart';
import 'package:project1/features/profile/data/models/user%20details%20model/user_details.dart';
import 'widgets/account widgets/account_view_body.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});
  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return AccountViewBody(
      user: UserDetailsModel(
          email: 'eomar2057@gmail.com',
          name: 'Esraa omar',
          id: '',
          username: '',
          password: ''),
    );
  }
}
