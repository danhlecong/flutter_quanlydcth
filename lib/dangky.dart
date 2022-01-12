import 'dart:ui';

import 'package:flutter/material.dart';
class Myapp6 extends StatelessWidget {
  const Myapp6({Key? key}) : super(key: key);

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
        appBar: AppBar(title: Text("Đăng ký"),),
        body: Form(
          child: Column(
            children: [
              Text("Đăng ký", style: TextStyle(fontSize: 30),),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Please enter your username",
                    labelText: "User name"
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_open),
                    hintText: "nhập email",
                    labelText: "email"
                ),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_open),
                    hintText: "nhap mạt khẩu",
                    labelText: "Pass word"
                ),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_open),
                    hintText: "nhập lại mật khẩu",
                    labelText: "Pass word"
                ),
                obscureText: true,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Dăng ký"))
            ],
          ),
        )
    );
  }
}




