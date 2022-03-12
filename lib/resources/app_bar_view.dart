import 'package:flutter/material.dart';

AppBar appBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    elevation: 0,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () => scaffoldKey.currentState!.openDrawer(),
      color: Colors.black,
    ),
  );
}
