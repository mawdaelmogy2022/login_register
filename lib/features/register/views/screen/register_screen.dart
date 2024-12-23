import 'package:chat_app/core/style/Textstyle_app.dart';
import 'package:chat_app/core/style/colors_app.dart';
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

        /* Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formstate,
          child: Column(
            children: [
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    StringApp.registerName,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextfield(
                  controller: name,
                  validator: (val) {
                    if (val == null || val.length < 3) {
                      return 'name must be atleast 3 character';
                    } else {
                      return null;
                    }
                  },
                  hintText: 'Enter your name',
                  label: "Name",
                  icon: const Icon(Icons.person_4_outlined)),
              const SizedBox(height: 15),
              CustomTextfield(
                  controller: nationalId,
                  validator: (val) {
                    if (val == null || val.length < 14) {
                      return 'National number must be atleast 14 number';
                    } else {
                      return null;
                    }
                  },
                  hintText: 'Enter your national Number  ',
                  label: "National Number",
                  icon: Icon(Icons.person)),
              const SizedBox(height: 15),
              CustomTextfield(
                  controller: phone,
                  validator: (val) {
                    if (val == null || val.length < 11) {
                      return "number must be atleast 11 number";
                    } else {
                      return null;
                    }
                  },
                  hintText: 'Enter your phone',
                  label: "Phone",
                  icon: Icon(Icons.phone)),
              const SizedBox(height: 15),
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
                  hintText: 'Enter your Email',
                  label: "Email",
                  icon: Icon(Icons.email_outlined)),
              const SizedBox(height: 15),
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
                  label: "Pasword",
                  icon: Icon(Icons.password_outlined)),
              const SizedBox(height: 15),
              CustomTextfield(
                  controller: token,
                  validator: (val) {
                    if (val == null || val.length < 8) {
                      return " ";
                    } else {
                      return null;
                    }
                  },
                  hintText: 'Enter your token',
                  label: "Token",
                  icon: Icon(Icons.token)),
              const SizedBox(height: 20),
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
              const SizedBox(
                height: 10,
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
                      child: const Text(
                        'Login Now',
                        style:
                            TextStyle(fontSize: 16, color: ColorsApp.blueColor),
                      )),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),*/
     ) );
  }
}
