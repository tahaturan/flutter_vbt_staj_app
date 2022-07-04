import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  var formKey = GlobalKey<FormState>();
  var emailTxtFieldKontrol = TextEditingController();
  var sifreTxtFieldKontrol = TextEditingController();
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: emailTxtFieldKontrol,
            decoration: InputDecoration(
              hintText: "Email Address",
              labelText: "EMAIL",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
            validator: (girilenDeger) {
              if (girilenDeger!.isEmpty) {
                return "Mail adresi bos olamaz";
              }
              if (EmailValidator.validate(girilenDeger)) {
                return "Gecerli bir Mail Adresi Giriniz";
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 60,
            child: TextFormField(
              obscureText: obsecureText,
              controller: sifreTxtFieldKontrol,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "PASSWORD",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obsecureText = !obsecureText;
                    });
                  },
                  icon: obsecureText
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
              ),
              validator: (gelenDeger) {
                if (gelenDeger!.isEmpty) {
                  return "Sifre Bos Olamaz";
                }
                return null;
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    bool kontrolSonuc = formKey.currentState!.validate();
                    if (kontrolSonuc) {
                      print("Giris Basarili");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Log In",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 2),
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
