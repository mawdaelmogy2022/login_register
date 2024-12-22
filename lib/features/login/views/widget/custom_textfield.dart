import 'package:chat_app/core/style/border_textfield.dart';
import 'package:chat_app/core/style/colors_app.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.hintText,
      required this.label,
      required this.icon,
      required this.validator,required this.controller});
  final String hintText;
  final String label;
  final Icon icon;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      validator: validator,
      decoration: InputDecoration(
          hintText: hintText,
          label: Text(label),
          prefixIcon: icon,
          enabledBorder: borderTextfield(raduis: 8, color: ColorsApp.greyColor),
          focusedBorder:
              borderTextfield(raduis: 8, color: ColorsApp.blueColor)),
    );
  }
}
