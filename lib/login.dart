import 'dart:ui';

import 'package:flutter/material.dart';
class Myapp5 extends StatelessWidget {
  const Myapp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Thêm dụng cụ"),),
      body: Form(
          child: Column(
            children: [
              Text("Thêm dụng cụ", style: TextStyle(fontSize: 30),),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Nhập mã dung cụ",
                  labelText: "Mã Dụng Cụ"
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_open),
                    hintText: " nhập tên dụng cụ",
                    labelText: "Tên dung cụ"
                ),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_open),
                    hintText: "Nhập số lượng",
                    labelText: "Số lượng"
                ),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock_open),
                  hintText: "Please enter your password",
                  labelText: "Tình trạng"
                ),
                obscureText: true,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Thêm"))
            ],
      ),
    )
    );
  }
}




