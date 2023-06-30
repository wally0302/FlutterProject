// 用途 : 簡化  TextFormField 的使用

import 'package:flutter/material.dart';

import 'comHelp.dart';

class genTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintname;
  final IconData icon;
  final bool isobscureText;
  TextInputType inputType; //限制輸入的類型

  genTextFormField(
      {required this.controller,
      required this.hintname,
      required this.icon,
      this.isobscureText = false,
      this.inputType = TextInputType.text}); //預設為文字輸入

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20), //左右間隔
      child: TextFormField(
        controller: controller,
        obscureText: isobscureText,
        keyboardType: inputType, //限制輸入的類型
        validator: (value) {
          //檢查有沒有符合表單的標準
          if (value == null || value.isEmpty) {
            return 'Please enter $hintname';
          }
          //檢查Email格式
          if (hintname == "Email" && !validateEmail(value)) {
            return 'Please Enter Valid Email';
          }
          return null;
        },
        // onSaved: (val) => controller.text = val!,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              //未點擊的邊框
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide:
                  BorderSide(color: Colors.transparent)), // transparent透明
          focusedBorder: const OutlineInputBorder(
            //點擊後的邊框
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          prefixIcon: Icon(icon),
          hintText: hintname, //提示文字
          labelText: hintname, //標籤文字
          filled: true, //填滿
          fillColor: const Color.fromARGB(255, 209, 208, 208),
        ),
      ),
    );
  }
}
