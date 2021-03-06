import 'package:FlutterGalleryApp/res/colors.dart';
import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String kFlutterDash =
    'https://sun9-13.userapi.com/Hd8qlG-RvQI2CM2SMGuzQAMjz_bEfQqMShYtAw/9IdgGuS3PHo.jpg';

class Feed extends StatefulWidget {
  Feed({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FeedState();
  }
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: <Widget>[
                _buildItem(),
                Divider(thickness: 2, color: AppColors.mercury),
              ]);
            }));
  }
}

Widget _buildItem() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Photo(
        photoLink: kFlutterDash,
      ),
      _buildPhotoMeta(),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text('This is flutter dash. I love hm :) ',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.h3.copyWith(color: AppColors.manatee)),
      )
    ],
  );
}

Widget _buildPhotoMeta() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            UserAvatar(
                'https://sun2-4.userapi.com/impf/gSeiP0TLSqqkQez-CRl9Y41Il8X-fPCt4yl1Xg/WebLY0VNXqo.jpg?size=100x0&quality=88&crop=402,0,1535,1535&sign=59dd05546960595f349b48b90dac91df&ava=1'),
            SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Tatyana Chichkanova",
                  style: AppStyles.h2Black,
                ),
                Text(
                  "@tanushques",
                  style: AppStyles.h5Black.copyWith(color: AppColors.manatee),
                )
              ],
            ),
          ],
        ),
        LikeButton(10, true),
      ],
    ),
  );
}
