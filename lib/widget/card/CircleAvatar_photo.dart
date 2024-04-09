

import 'package:flutter/material.dart';

import '../../utils/app_locale.dart';

class Cus_CircleAvatar{

  Widget buildCircleImage({String fileType='',var photoLink ,double? radius} ) {
    switch (fileType) {
      case "network":
        return CircleAvatar(
          backgroundImage: NetworkImage(photoLink),
          radius: radius??70,
        );
      case "asset":
        return CircleAvatar(
          backgroundImage: AssetImage(photoLink),
          radius: radius??70,
        );
      default:
        return CircleAvatar(
          // backgroundImage: const AssetImage(AppImages.),
          radius: radius??70,

        );
    }
  }

}