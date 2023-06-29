import 'package:demo/comm/genLoginSignupHeader.dart';
import 'package:flutter/material.dart';

import 'LoginForm.dart';
import 'package:demo/comm/genTextFormField.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conConfirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login with Signup')),
      body: SingleChildScrollView(
          // 可以讓使用者在鍵盤彈出時滾動查看整個介面內容，以便完整地看到螢幕上的所有內容。
          scrollDirection: Axis.vertical,
          //元件垂直方向滾動
          child: Container(
            child: Center(
              // 置中
              child: Column(
                // 垂直方向排列
                mainAxisAlignment: MainAxisAlignment.center, //元件置中
                children: [
                  genLoginSignupHeader(
                    headerName: 'Sign up',
                  ),
                  // const SizedBox(
                  //   //間隔
                  //   height: 50,
                  // ),
                  // const Text(
                  //   'Sign up',
                  //   style: TextStyle(
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black),
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // Image.asset(
                  //   "images/DSC09681.JPG",
                  //   height: 150,
                  //   width: 150,
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // const Text(
                  //   '好「揪」不見',
                  //   style: TextStyle(
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black38),
                  // ),
                  /////////////////////////////////////////////
                  // 輸入欄位
                  //
                  genTextFormField(
                    controller: _conUserId,
                    icon: Icons.person,
                    hintname: 'UserID',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  genTextFormField(
                    controller: _conUserName,
                    icon: Icons.person_outline,
                    hintname: 'UserName',
                    inputType: TextInputType.name, //只能輸入數字
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  genTextFormField(
                    controller: _conEmail,
                    icon: Icons.email,
                    hintname: 'Email',
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  genTextFormField(
                    controller: _conPassword,
                    icon: Icons.lock,
                    hintname: 'Password',
                    isobscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  genTextFormField(
                    controller: _conConfirmPassword,
                    icon: Icons.lock,
                    hintname: 'Confirm Password',
                    isobscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  /////////////////////////////////////////////
                  //
                  // Sign up 按鈕
                  //
                  Container(
                    margin: const EdgeInsets.all(30), //外邊距
                    width: double.infinity,
                    decoration: BoxDecoration(
                        //設定圓角
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)), //寬度填滿
                    child: TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  //
                  // Does not have account? + Sign in 按鈕
                  //
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, //置中
                      children: [
                        const Text('Does you have account?'),
                        TextButton(
                          child: const Text(
                            'Sign in',
                            style: TextStyle(color: Colors.blue),
                          ),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                //pushAndRemoveUntil 會將原本的頁面清除，並將新的頁面加入，這樣就不會有返回的問題
                                context,
                                MaterialPageRoute(builder: (_) => LoginForm()),
                                (Route<dynamic> route) => false);
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
