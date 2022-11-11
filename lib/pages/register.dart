import 'package:e_commerce/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/shared/custom_textfield.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[

                  const SizedBox(
                    height: 70,
                  ),

                  CTextField(
                    textInputTypeee: TextInputType.name,
                    isPassword: false,
                    hinttexttt: "Enter Your Username : ",
                  ),

                  const SizedBox(
                    height: 33,
                  ),

                  CTextField(
                    textInputTypeee: TextInputType.emailAddress,
                    isPassword: false,
                    hinttexttt: "Enter Your Email : ",
                  ),

                  const SizedBox(
                    height: 33,
                  ),

                  CTextField(
                    textInputTypeee: TextInputType.text,
                    isPassword: true,
                    hinttexttt: "Enter Your Password : ",
                  ),

                  const SizedBox(
                    height: 33,
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Register",
                      style:TextStyle(
                          fontSize: 19
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Btn_green),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                  ),

                  const SizedBox(
                    height: 33,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child:
                          Text("Log in",
                            style: TextStyle(
                              color: Color.fromARGB(255, 73, 179, 105),
                              fontSize: 18,
                            ),
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
