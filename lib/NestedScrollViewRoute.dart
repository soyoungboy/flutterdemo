import 'package:flutter/material.dart';

class NestedScrollViewRoute extends StatelessWidget {
  const NestedScrollViewRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text("嵌套ListView"),
              pinned: true, // 固定在顶部
              forceElevated: innerBoxIsScrolled,
            ),
            buildSliverList(5), //构建一个 sliverList
          ];
        },
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 50,
            child: Center(
              child: Text('Item = $index'),
            ),
          );
        }),
      ),
    );
  }

  // 构建 header
  Widget buildSliverList(int i) {
    return Container(
      color: Colors.lightBlue.shade200,
      alignment: Alignment.centerLeft,
      child: Text("PersistentHeader $i"),
    );
  }
}
