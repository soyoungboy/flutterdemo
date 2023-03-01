import 'package:flutter/cupertino.dart';

class ImageAndIconRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = AssetImage("graphics/ic_launcher.png");
    return SingleChildScrollView(
      child: Column(
          children: <Image>[
        Image(
          image: assetImage,
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
        Image(
          image: assetImage,
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
        Image(
          image: assetImage,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Image(
          image: assetImage,
          width: 100,
          height: 100,
          fit: BoxFit.fitWidth,
        ),
        Image(
          image: assetImage,
          width: 100,
          height: 100,
          fit: BoxFit.fitHeight,
        ),
        Image(
          image: assetImage,
          width: 100,
          height: 100,
          fit: BoxFit.none,
        ),
      ].map((e) {
        return Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: 100,
                child: e,
              ),
            ),
            Text(e.fit.toString())
          ],
        );
      }).toList()),
    );
  }
}
