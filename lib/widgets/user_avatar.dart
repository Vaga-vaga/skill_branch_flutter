import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class UserAvatar extends StatelessWidget {
  @override
  UserAvatar(this.avatarLink);

  final String avatarLink;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: CachedNetworkImage(
        imageUrl: this.avatarLink,
        width: 40,
        height: 40,
        fit: BoxFit.fill,
      ),
    );
  }
}
