import 'package:flutter/material.dart';
import 'package:flutter_vbt_staj_app/constants/app_constants.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(Constants.loginTitle, style: Constants.logInTitleStyle),
          ),
          const Text(
            "Enter your email and password below",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
