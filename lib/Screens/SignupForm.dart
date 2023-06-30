import 'package:demo/comm/comHelp.dart';
import 'package:demo/comm/genLoginSignupHeader.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'LoginForm.dart';
import 'package:demo/comm/genTextFormField.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formkey = new GlobalKey<FormState>(); //表單驗證

  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conConfirmPassword = TextEditingController();

  signUp() {
    final form = _formkey.currentState; //取得表單狀態

    String uid = _conUserId.text;
    String uname = _conUserName.text;
    String uemail = _conEmail.text;
    String upassword = _conPassword.text;
    String uconfirmpassword = _conConfirmPassword.text;
    if (form!.validate()) {
      alertDialog('OKffffffffffffffff');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login with Signup')),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
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
                        onPressed: signUp, //記得不要 ()，不然會直接執行
                        // onPressed: () {},
                      ),
                    ),
                    //
                    // Does you have account? + Sign in 按鈕
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
                                  MaterialPageRoute(
                                      builder: (_) => LoginForm()),
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
      ),
    );
  }
}
