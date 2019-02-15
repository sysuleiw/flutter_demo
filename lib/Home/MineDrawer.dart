import 'package:flutter/material.dart';

class MineDrawer extends StatelessWidget {
  const MineDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 58.0, bottom: 20),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "resources/images/ysmd.jpg",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "王磊",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('添加用户'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('管理用户'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
