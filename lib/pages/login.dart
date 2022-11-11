import 'package:flutter/material.dart';
import 'package:e_commerce/shared/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children:const[
              SizedBox(
                  height: 70,
              ),
              CTextField(
                textInputTypeee: TextInputType.emailAddress,
                isPassword: false,
                hinttexttt: "Enter Your Email : ",
              ),
              SizedBox(
                height: 33,
              ),
              CTextField(
                textInputTypeee: TextInputType.text,
                isPassword: true,
                hinttexttt: "Enter Your Password : ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
