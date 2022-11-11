import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              const SizedBox(
                  height: 70,
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  //obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Your E-mail : ",
                    // To delete borders
                    enabledBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(
                          context,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
