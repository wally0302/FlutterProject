import 'package:flutter/material.dart';

class genLoginSignupHeader extends StatelessWidget {
  // 變數:標題
  final String headerName;
  genLoginSignupHeader({required this.headerName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            //間隔
            height: 50,
          ),
          Text(
            headerName,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            //間隔
            height: 10,
          ),
          Image.asset(
            "images/DSC09681.JPG",
            height: 150,
            width: 150,
          ),
          const SizedBox(
            //間隔
            height: 10,
          ),
          const Text(
            '好「揪」不見',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black38),
          ),
          const SizedBox(
            //間隔
            height: 10,
          ),
        ],
      ),
    );
  }
}
