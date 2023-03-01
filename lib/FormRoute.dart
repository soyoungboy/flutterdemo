import 'package:flutter/material.dart';

class FormRoute extends StatefulWidget{
  const FormRoute({super.key});

  @override
  FormRouteState createState()=> FormRouteState();
}

class FormRouteState extends State<FormRoute> {
    TextEditingController nameController = TextEditingController();
    TextEditingController pswController = TextEditingController();
    GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
  body:Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 24.0),
    child: Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,// 自动校验
      child: Column(
        children: <Widget>[
          TextFormField(
            autofocus: true,
            controller: nameController,
            decoration: const InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名",
                icon:Icon(Icons.person)
            ),

            // 对用户名进行校验
            validator: (v){
              return v!.trim().isNotEmpty?null:"用户名不能为空";
            },
          ),
          TextFormField(
            autofocus: true,
            controller: pswController,
            decoration: const InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                icon:Icon(Icons.lock)
            ),
            obscureText: true,
            // 对用户名进行校验
            validator: (v){
              return v!.trim().length>5?null:"密码长度不能低于6位";
            },
          ),
          Padding(padding: const EdgeInsets.only(top: 28.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: TextButton(
                    child: const Text("登录"),
                    onPressed: () {
                    if((formKey.currentState as FormState).validate()){
                      print("验证通过");
                    }else{
                      print("验证失败");
                    }
                      },
              ))
            ],
          ),
          )

        ],
      ),
    ),
  ),



    );
  }
}