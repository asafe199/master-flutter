import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master/utils/colors.dart';
import 'package:master/utils/screen_util.dart';

class UITextFormField {
  static TextFormField textFormField(TextEditingController controller, {
    FormFieldValidator<String> validator,
    TextInputType textInputType,
    TextAlign align,
  }) {
    return TextFormField(
      controller: controller,
      textAlign: align ?? TextAlign.center,
      cursorColor: ScreenUtil.brightness ==  Brightness.dark ? Colors.white : Colors.black,
      validator: validator,
      keyboardType: textInputType,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: UIColors.defaultColor, width: 3),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: UIColors.defaultColor, width: 3),
              borderRadius: BorderRadius.all(Radius.circular(15)))),
          style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
