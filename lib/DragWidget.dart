import 'package:flutter/material.dart';

class DragWidget extends StatefulWidget {
  const DragWidget({super.key});

  @override
  DragState createState() => DragState();
}

class DragState extends State<DragWidget>
    with SingleTickerProviderStateMixin<DragWidget> {
  // double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            // top: _top,
            left: _left,
            child: GestureDetector(
              child: const CircleAvatar(child: Text("A")),
              // 手指按下，全局位置
              onPanDown: (DragDownDetails e) {
                print("按下:${e.globalPosition}");
              },
              // 滑动过程中
              onPanUpdate: (DragUpdateDetails e) {
                setState(() {
                  // dx 为x轴偏移量
                  _left = _left + e.delta.dx;
                  // _top = _top + e.delta.dy;
                });
              },
              // 滑动结束的时候
              onPanEnd: (DragEndDetails e) {
                print("速度：${e.velocity}");
              },
            ))
      ],
    );
  }
}
