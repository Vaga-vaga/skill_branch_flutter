import 'package:FlutterGalleryApp/res/app_icons.dart';
import 'package:FlutterGalleryApp/res/colors.dart';
import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatefulWidget {
  FullScreenImage(
      {Key key, this.altDescription, this.userName, this.name, this.photo})
      : super(key: key);
  final String altDescription;
  final String userName;
  final String name;
  final String photo;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Container(
              child: Text('Save'),
            ),
            onTap: () => false,
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Container(
              // decoration: Decoration(),

              child: Text('Visit'),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.dodgerBlue,
                  borderRadius: BorderRadius.all(Radius.circular(17))),
            ),
            onTap: () => false,
          ),
          Text(
            widget.altDescription,
            style: AppStyles.h3,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            widget.name,
            style: AppStyles.h1Black,
          ),
          Text(
            widget.userName,
            style: AppStyles.h5Black.copyWith(color: AppColors.manatee),
          ),
          Photo(
            photoLink: widget.photo,
          ),
        ],
      ),
    );
  }
}
