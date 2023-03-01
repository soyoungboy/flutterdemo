import 'package:flutter/material.dart';

class FocusTestRoute extends StatefulWidget{
  const FocusTestRoute({super.key});

  @override
  FocusTestRouteState createState()=>FocusTestRouteState();
}

class FocusTestRouteState extends State<FocusTestRoute>{
  // FocusNode 控制焦点用
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  // 移动焦点，设置默认焦点用
  late FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
   return  Padding(
     padding: const EdgeInsets.all(16.0),
  child: Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          focusNode: focusNode1,
          decoration: const InputDecoration(
            labelText: "input1"
          ),
        ),
        TextField(
          focusNode: focusNode2,
          decoration: const InputDecoration(
            labelText: "input2"
          ),
        ),
        Builder(builder: (ctx){
          return Column(
            children: <Widget>[
              TextButton(
                child: const Text("移动焦点"),
                onPressed: (){
                if(null==focusScopeNode){
                  focusScopeNode = FocusScope.of(context);
                }else{
                  // 焦点移动到第二个TextField
                  focusScopeNode.requestFocus(focusNode2);
                }
                },
              ),
              TextButton(
                child: const Text("隐藏键盘"),
                onPressed: (){
                  focusNode1.unfocus();
                  focusNode2.unfocus();
                },
              )
            ],
          );
        })
      ],
  ),
   );
  }
}