import 'package:flutter/material.dart';

class ProgressRoute extends StatefulWidget {
  const ProgressRoute({super.key});

  @override
  ProgressRouteState createState() => ProgressRouteState();
}

class ProgressRouteState extends State<ProgressRoute>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));
    animationController.forward();
    animationController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding: const EdgeInsets.all(16),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: ColorTween(begin: Colors.green, end: Colors.red).animate(animationController),
                value: animationController.value,
              )
          ),

        ],
      ),
    );
  }
}
