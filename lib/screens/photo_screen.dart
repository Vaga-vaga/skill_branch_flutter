import 'package:FlutterGalleryApp/res/app_icons.dart';
import 'package:FlutterGalleryApp/res/colors.dart';
import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/photo.dart';
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
      appBar: AppBar(
        title: Text(
          "Photo",
          style: AppStyles.h2Black,
        ),
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
          ),
          onPressed: () {
            return false;
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Photo(
              photoLink: 'http://binar.6hi.ru/48.png',
            ),
            Text(
              widget.name,
              style: AppStyles.h1Black,
            ),
            Text(
              widget.userName,
              style: AppStyles.h5Black.copyWith(color: AppColors.manatee),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ButtonBar(
                  buttonMinWidth: 105,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () => null,
                      child: Text(
                        "Save",
                        style: AppStyles.h4.copyWith(color: AppColors.white),
                      ),
                      color: AppColors.dodgerBlue,
                      height: 36,
                    ),
                    FlatButton(
                        onPressed: () => null,
                        child: Text(
                          "Visit",
                          style: AppStyles.h4.copyWith(color: AppColors.white),
                        ),
                        color: AppColors.dodgerBlue)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
