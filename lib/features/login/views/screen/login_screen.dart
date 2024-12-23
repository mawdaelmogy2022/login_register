import 'package:chat_app/core/style/Textstyle_app.dart';
import 'package:chat_app/core/style/colors_app.dart';
import 'package:chat_app/core/style/image_app.dart';
import 'package:chat_app/core/style/list_app.dart';
import 'package:chat_app/core/style/string_app.dart';
import 'package:chat_app/core/style/textfield_controller.dart';
import 'package:chat_app/core/widget/custom_textfield.dart';
import 'package:chat_app/features/register/views/screen/register_screen.dart';
import 'package:chat_app/core/widget/custom_button.dart';


import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = "LOGIN";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  static GlobalKey<FormState> formstate = GlobalKey();
  @override
  void dispose() {
    TextfieldController.email.dispose();
    TextfieldController.password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.whiteColor,
      body:
       Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formstate,
            child: Column(
              children: [
              Image.asset(ImageApp.imageLogin),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      StringApp.loginName,
                      style: textStyle22black()
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: ListApp.listLogin.length,
                    itemBuilder: (context, index) {
                    return  CustomTextfield(
                      textfieldModel: ListApp.listLogin[index],
                          ) ;
                  }),
                ),
                  CustomButton(
                ontap: () {
                  if (formstate.currentState!.validate()) {
                    Navigator.pop(context);
                  } else {
                    print('Not valid');
                  }
                },
                title: 'Login',
              ),
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
                        child:  Text(
                          'Register Now',
                          style: textStyle16blue(),
                        )),
                  ],
                ),
        
              ],
            ),
          ),
        ),
    );
  }
}
