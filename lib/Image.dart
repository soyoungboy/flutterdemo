import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('graphics/ic_launcher.png'),
      )),
    );
  }
}
