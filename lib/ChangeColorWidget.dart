import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ChangeColorWidget extends StatefulWidget {
  const ChangeColorWidget({super.key});

  @override
  ChangeColorWidgetState createState() => ChangeColorWidgetState();
}

class ChangeColorWidgetState extends State<ChangeColorWidget> {
  // 手势识别器
  TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer();

  //手势开关
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(TextSpan(
        text: "点我变颜色",
        style: TextStyle(
            fontSize: 30,
            color: toggle ? Colors.green : Colors.red,
        ),
        recognizer: tapGestureRecognizer
          ..onTap = () {
            setState(() {
              toggle = !toggle;
            });
          },
      )),
    );
  }
}
