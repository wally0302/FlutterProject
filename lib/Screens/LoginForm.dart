import 'package:flutter/material.dart';

import '../comm/genLoginSignupHeader.dart';
import 'SignupForm.dart';
import 'package:demo/comm/genTextFormField.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
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
                  //取代以下程式碼，另外寫成一個方法叫做 getTextFormField.dart
                  // const SizedBox(
                  //   //間隔
                  //   height: 50,
                  // ),
                  // const Text(
                  //   'Login',
                  //   style: TextStyle(
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black),
                  // ),
                  // const SizedBox(
                  //   //間隔
                  //   height: 10,
                  // ),
                  // Image.asset(
                  //   "images/DSC09681.JPG",
                  //   height: 150,
                  //   width: 150,
                  // ),
                  // const SizedBox(
                  //   //間隔
                  //   height: 10,
                  // ),
                  // const Text(
                  //   '好「揪」不見',
                  //   style: TextStyle(
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black38),
                  // ),
                  // const SizedBox(
                  //   //間隔
                  //   height: 10,
                  // ),

                  //
                  //UserID
                  //
                  // 因為下面這個都是重複的，所以把他變成一個方法，就可以重複取用
                  genTextFormField(
                    controller: _conUserId,
                    icon: Icons.person,
                    hintname: 'User ID',
                    //inputType: TextInputType.number, //只能輸入數字，鍵盤會改變
                  ),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20), //左右間隔

                  //   child: TextFormField(
                  //     decoration: const InputDecoration(
                  //       enabledBorder: OutlineInputBorder(
                  //           //未點擊的邊框
                  //           borderRadius: BorderRadius.all(Radius.circular(30)),
                  //           borderSide: BorderSide(
                  //               color: Colors.transparent)), // transparent透明
                  //       focusedBorder: OutlineInputBorder(
                  //         //點擊後的邊框
                  //         borderRadius: BorderRadius.all(Radius.circular(30)),
                  //         borderSide: BorderSide(color: Colors.blue),
                  //       ),
                  //       prefixIcon: Icon(Icons.person),
                  //       hintText: 'UserID', //提示文字
                  //       filled: true, //填滿
                  //       fillColor: Color.fromARGB(255, 209, 208, 208),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    //間隔
                    height: 10,
                  ),
                  genTextFormField(
                    controller: _conPassword,
                    icon: Icons.lock,
                    hintname: 'Password',
                    isobscureText: true,
                  ),
                  //
                  //Password
                  //
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20), //左右間隔
                  //   child: TextFormField(
                  //     obscureText: true, //密碼隱藏
                  //     decoration: const InputDecoration(
                  //       enabledBorder: OutlineInputBorder(
                  //           //未點擊的邊框
                  //           borderRadius: BorderRadius.all(Radius.circular(30)),
                  //           borderSide: BorderSide(
                  //               color: Colors.transparent)), // transparent透明
                  //       focusedBorder: OutlineInputBorder(
                  //         //點擊後的邊框
                  //         borderRadius: BorderRadius.all(Radius.circular(30)),
                  //         borderSide: BorderSide(color: Colors.blue),
                  //       ),
                  //       prefixIcon: Icon(Icons.lock),
                  //       hintText: 'Password', //提示文字
                  //       filled: true, //填滿
                  //       fillColor: Color.fromARGB(255, 209, 208, 208),
                  //     ),
                  //   ),
                  // ),
                  //
                  // Login 按鈕
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
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  //
                  // Does not have account? + Sign up 按鈕
                  //
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, //置中
                      children: [
                        const Text('Does not have account?'),
                        TextButton(
                          child: const Text(
                            'Sign up',
                            style: TextStyle(color: Colors.blue),
                          ),
                          onPressed: () {
                            //
                            // 當按鈕被點擊時，它將導航到名為 SignupForm 的頁面，通過使用 MaterialPageRoute 和 Navigator.push 來實現頁面的切換和導航。
                            //
                            Navigator.push(
                                // Navigator 是 Flutter 中用於管理頁面導航的類。push 方法用於將使用者導航到另一個頁面。
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        SignupForm())); //導向到SignupForm
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
