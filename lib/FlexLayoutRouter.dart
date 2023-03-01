import 'package:flutter/material.dart';

class FlexLayoutRouter extends StatelessWidget {
  const FlexLayoutRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  height: 30,
                  color: Colors.green,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.green,
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            height: 100,
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: Colors.grey,
                    )),
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
