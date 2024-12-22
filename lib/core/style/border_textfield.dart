import 'package:flutter/material.dart';

InputBorder borderTextfield({required double raduis, required Color color}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(raduis),
      borderSide:  BorderSide(color: color,width: 2 ));
}
