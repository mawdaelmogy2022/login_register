 import 'package:chat_app/core/style/textfield_controller.dart';
import 'package:chat_app/models/textfield_model.dart';
import 'package:flutter/material.dart';

class ListApp {
  
  static List<TextfieldModel> listRegister = [
  TextfieldModel(
      controller: TextfieldController.name,
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
  TextfieldModel(
      validator: (val) {
        if (val == null || val.length < 14) {
          return 'National number must be atleast 14 number';
        } else {
          return null;
        }
      },
      controller: TextfieldController.nationalId,
      hintText: 'Enter your national Number  ',
      label: "National Number",
      icon: const Icon(Icons.person)),
  TextfieldModel(
      validator: (val) {
        if (val == null || val.length < 11) {
          return "number must be atleast 11 number";
        } else {
          return null;
        }
      },
      controller: TextfieldController.phone,
      hintText: 'Enter your phone',
      icon: const Icon(Icons.phone),
      label: "Phone"),
  TextfieldModel(
      validator: (val) {
        if (val == null || !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(val)) {
          return "Invalid email";
        } else {
          return null;
        }
      },
      controller: TextfieldController.email,
      hintText: 'Enter your Email',
      icon: const Icon(Icons.email_outlined),
      label: "Email"),
  TextfieldModel(
      validator: (val) {
        if (val == null || val.length < 8) {
          return 'passsword must be at least 8 character';
        } else {
          return null;
        }
      },
      controller: TextfieldController.password,
      hintText: 'Enter your password',
      icon: const Icon(Icons.password_outlined),
      label: "Password"),
  TextfieldModel(
      controller: TextfieldController.token,
      validator: (val) {
        if (val == null || val.length < 5) {
          return "token must be at least 5 character ";
        } else {
          return null;
        }
      },
      hintText: 'Enter your token',
      label: "Token",
      icon: const Icon(Icons.token)),
];





  static  List<TextfieldModel> listLogin = [
    TextfieldModel(
      validator: (val) {
        if (val == null || !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(val)) {
          return "Invalid email";
        } else {
          return null;
        }
      },
      controller: TextfieldController.email,
      hintText: 'Enter your Email',
      icon: const Icon(Icons.email_outlined),
      label: "Email"),
  TextfieldModel(
      validator: (val) {
        if (val == null || val.length < 8) {
          return 'passsword must be at least 8 character';
        } else {
          return null;
        }
      },
      controller: TextfieldController.password,
      hintText: 'Enter your password',
      icon: const Icon(Icons.password_outlined),
      label: "Password"),
];

 }