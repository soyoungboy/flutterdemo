import 'package:flutter/material.dart';

class HeroAnimationA extends StatelessWidget {
  const HeroAnimationA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          InkWell(
            child: Hero(
              tag: "avatar",
              child: ClipOval(
                child: Image.asset(
                  "graphics/ic_launcher.png",
                  width: 50.0,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context, PageRouteBuilder(pageBuilder: (
                BuildContext context,
                animation,
                secondaryAnimation,
              ) {
                return FadeTransition(
                  opacity: animation,
                  child: Scaffold(
                    appBar: AppBar(
                      title: const Text("原图"),
                    ),
                    body: const HeroAnimationB(),
                  ),
                );
              }));
            },
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text("点击头像"),
          )
        ],
      ),
    );
  }
}

class HeroAnimationB extends StatelessWidget {
  const HeroAnimationB({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "avatar",
        child: Image.asset("graphics/ic_launcher.png"),
      ),
    );
  }
}
