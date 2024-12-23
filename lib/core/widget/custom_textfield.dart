import 'package:chat_app/core/style/border_textfield.dart';
import 'package:chat_app/core/style/colors_app.dart';
import 'package:chat_app/models/textfield_model.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
    required this.textfieldModel});
  final  TextfieldModel textfieldModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: textfieldModel.validator,
          decoration: InputDecoration(
              hintText: textfieldModel.hintText,
              label: Text(textfieldModel.label),
              prefixIcon: textfieldModel.icon,
              enabledBorder: borderTextfield(raduis: 8, color: ColorsApp.greyColor),
              focusedBorder:
                  borderTextfield(raduis: 8, color: ColorsApp.blueColor)),
        ),
     const SizedBox(height: 10),
      ],
    );
  }
}
