import 'package:chat_app/core/style/Textstyle_app.dart';
import 'package:chat_app/core/style/list_app.dart';
import 'package:chat_app/core/style/string_app.dart';
import 'package:chat_app/core/style/textfield_controller.dart';
import 'package:chat_app/core/widget/custom_button.dart';
import 'package:chat_app/core/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static String id = "REGISTER";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  static GlobalKey<FormState> formstate = GlobalKey();
  @override
  void dispose() {
    TextfieldController.name.dispose();
    TextfieldController.nationalId.dispose();
    TextfieldController.phone.dispose();
    TextfieldController.email.dispose();
    TextfieldController.password.dispose();
    TextfieldController.token.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formstate,
            child: Column(
              children: [
              const  Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    StringApp.registerName,
                    style: textStyle22black(),
                  ),
                ],
              ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: ListApp.listRegister.length,
                    itemBuilder: (context, index) {
                    return  CustomTextfield(
                      textfieldModel: ListApp.listRegister[index],
                          ) ;
                  }),
                ),
              const  SizedBox(height: 10),
                  CustomButton(
                ontap: () {
                  if (formstate.currentState!.validate()) {
                    Navigator.pop(context);
                  } else {
                    print('Not valid');
                  }
                },
                title: 'Sign Up',
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already Have an Acount! ',
                    style: TextStyle(fontSize: 16),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:  Text(
                        'Login Now',
                        style:
                          textStyle16blue(),
                      )),
              Spacer(),
              ],
            ),
         ] ),
        ),


     ) );
  }
}
