import 'package:flutter/material.dart';
import 'package:flutter_vbt_staj_app/constants/app_constants.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          child: const CircleAvatar(
            backgroundColor: Colors.grey,
            child: Text(
              "D",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Text(Constants.title, style: Constants.titleStyle),
      ],
    );
  }
}
