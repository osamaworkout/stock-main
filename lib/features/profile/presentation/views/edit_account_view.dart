import 'package:flutter/material.dart';
import '../../data/models/user details model/user_details.dart';
import 'widgets/edit account widgets/edit_account_view_body.dart';

class EditAccountView extends StatelessWidget {
  const EditAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditAccountViewBody(
        user: UserDetailsModel(
          email: 'eomar2057@gmail.com',
          name: 'Esraa omar',
          username: '',
          password: '',
          id: '',
        ),
      ),
    );
  }
}
