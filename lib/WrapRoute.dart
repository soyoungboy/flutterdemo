import 'package:flutter/material.dart';

class WrapRoute extends StatelessWidget{
  const WrapRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          alignment: WrapAlignment.center,
          children: const <Widget>[
            Chip(label: Text("A"),
              avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("A")),
            ),
            Chip(label: Text("B"),
              avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("B")),
            ),
            Chip(label: Text("C"),
              avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("C")),
            ),
            Chip(label: Text("D"),
              avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("D")),
            ),
          ],
        )
      ],
    );
  }

}