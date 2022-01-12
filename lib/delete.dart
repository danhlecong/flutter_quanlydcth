import 'dart:ui';

import 'package:flutter/material.dart';
class Myapp8 extends StatelessWidget {
  const Myapp8({Key? key}) : super(key: key);

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
        appBar: AppBar(title: Text("Delete dụng cụ"),),
        body: Form(
          child: Column(
            children: [
              Text("Xóa dụng cụ", style: TextStyle(fontSize: 30),),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.delete),
                    hintText: "Nhập mã dung cụ",
                    labelText: "Mã Dụng Cụ"
                ),
              ),

              ElevatedButton(onPressed: (){}, child: Text("Delete"))
            ],
          ),
        )
    );
  }
}




