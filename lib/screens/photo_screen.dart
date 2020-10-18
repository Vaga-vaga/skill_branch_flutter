import 'package:FlutterGalleryApp/res/app_icons.dart';
import 'package:FlutterGalleryApp/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatefulWidget {
  FullScreenImage({Key key, this.altDescription, this.userName, this.name})
      : super(key: key);
  final String altDescription;
  final String userName;
  final String name;

  @override
  State<StatefulWidget> createState() {
    return _FullScreenImageState();
  }
}

class _FullScreenImageState extends State<FullScreenImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("test"),
      appBar: AppBar(
        title: Text("photo"),
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
