import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void alertDialog(BuildContext context, String msg) {
  ToastContext().init(context); // 初始化 ToastContext
  Toast.show(msg, duration: Toast.lengthLong, gravity: Toast.bottom);
}

// 檢查Email格式
validateEmail(String email) {
  final emailReg = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  return emailReg.hasMatch(email);
}
