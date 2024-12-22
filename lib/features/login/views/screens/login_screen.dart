import 'package:chat_app/core/style/colors_app.dart';
import 'package:chat_app/core/style/image_app.dart';
import 'package:chat_app/core/style/string_app.dart';
import 'package:chat_app/features/login/views/screens/register_screen.dart';
import 'package:chat_app/features/login/views/widget/custom_button.dart';
import 'package:chat_app/features/login/views/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = "LOGIN";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();
  static GlobalKey<FormState> formstate = GlobalKey();
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formstate,
            child: Column(
              children: [
                Image.asset(ImageApp.imageLogin),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      StringApp.loginName,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.blackcolor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                    controller: email,
                    validator: (val) {
                      if (val == null ||
                          !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(val)) {
                        return "Invalid email";
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Enter your mail',
                    label: "Email",
                    icon: Icon(Icons.email_outlined)),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                    controller: password,
                    validator: (val) {
                      if (val == null || val.length < 8) {
                        return 'passsword must be at least 8 character';
                      } else {
                        return null;
                      }
                    },
                    hintText: 'Enter your password',
                    label: "Password",
                    icon: Icon(Icons.password_outlined)),
                const SizedBox(height: 20),
                CustomButton(
                  title: "Login",
                  ontap: () {
                    if (formstate.currentState!.validate()) {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    } else {
                      print('Not valid');
                    }
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ?",
                      style: TextStyle(fontSize: 16),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RegisterScreen.id);
                        },
                        child: const Text(
                          'Register Now',
                          style: TextStyle(
                              color: ColorsApp.blueColor, fontSize: 16),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
