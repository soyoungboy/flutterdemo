import 'package:flutter/material.dart';
// StatefulWidget 维护状态需要继承这个
class SwitchAndCheckboxRoute extends StatefulWidget{
  const SwitchAndCheckboxRoute({super.key});

  @override
  SwitchAndCheckboxRouteSate createState() => SwitchAndCheckboxRouteSate();
}

class SwitchAndCheckboxRouteSate extends State<SwitchAndCheckboxRoute>{
  bool switchSelected = true;
  bool checkboxSelected = true;
  @override
  Widget build(BuildContext context) {
  return Column(
    children: <Widget>[
      Switch(
        value:switchSelected, onChanged: (bool value) {
          setState(() {
            switchSelected = value;
          });
      },),
      Checkbox(value: checkboxSelected,
        activeColor: Colors.red,
        onChanged: (bool? value) {
        setState(() {
          checkboxSelected = value!;
        });
      },
      )
    ],
  );
  }
}