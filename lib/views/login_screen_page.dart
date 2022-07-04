import 'package:flutter/material.dart';
import 'package:flutter_vbt_staj_app/constants/app_constants.dart';
import 'package:flutter_vbt_staj_app/widgets/email_text_field.dart';
import 'package:flutter_vbt_staj_app/widgets/login_title.dart';
import 'package:flutter_vbt_staj_app/widgets/login_logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.defeuldBackroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [const LoginLogo(), buildCard(context)],
          ),
        ),
      ),
    );
  }

  buildCard(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Card(
        elevation: 5,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginTitle(),
              const SizedBox(height: 50),
              Column(
                children: const [
                  EmailTextField(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
