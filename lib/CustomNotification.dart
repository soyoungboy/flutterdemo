import 'package:flutter/material.dart';

class CustomNotification extends Notification {
  CustomNotification(this.msg);

  final String msg;
}

class CustomNotificationRoute extends StatefulWidget {
  const CustomNotificationRoute({super.key});

  @override
  CustomNotificationRouteState createState() {
    return CustomNotificationRouteState();
  }
}

class CustomNotificationRouteState extends State<CustomNotificationRoute> {
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return NotificationListener<CustomNotification>(
      onNotification: (notification) {
        setState(() {
          msg = "${notification.msg} ";
        });
        return true;
      },
      child: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    //按钮点击时分发通知
                    onPressed: () => CustomNotification("Hi").dispatch(context),
                    child: const Text("发通知"),
                  );
                },
              ),
              Text(msg)

            ],
      ),
    ));
  }
}
