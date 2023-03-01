import 'package:flutter/material.dart';

class ZoomWidget extends StatefulWidget {
  const ZoomWidget({super.key});

  @override
  ZoomWidgetState createState() => ZoomWidgetState();
}

class ZoomWidgetState extends State<ZoomWidget> {
  double _width = 200.0; //通过修改图片宽度来达到缩放效果
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image.asset("./graphics/ic_launcher.png"),
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            _width = 200 * details.scale.clamp(.8, 10.0);
          });
        },
      ),
    );
  }
}
