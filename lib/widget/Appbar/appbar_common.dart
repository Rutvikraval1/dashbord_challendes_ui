

import 'package:dashboard/utils/custColors.dart';
import 'package:flutter/material.dart';

import '../../utils/app_locale.dart';
import '../../utils/app_style.dart';
import '../asset_img/asset_image_show.dart';

PreferredSizeWidget MainAppBar() {
  return AppBar(
      titleSpacing: 0,
      backgroundColor: AppColors.transparent,
      title: ListTile(
        title: Text("MANDAN",style: App_style().text_darkgrey_PM,),
        subtitle: Text("PARIVAR",style: App_style().text_darkgrey_PR,),
        leading:Asset_imge_show().Img_asset(AppImages.app_logo),
      ),
      surfaceTintColor: AppColors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 18,
            child: Asset_imge_show().SvgPicture_asset(AppImages.language_icon),
          ),
        ),
        const SizedBox(width: 10,),
        CircleAvatar(
          radius: 18,
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Asset_imge_show().SvgPicture_asset(AppImages.notification_icon),
          ),
        ),
        const SizedBox(width: 15,),
      ],
      elevation: 5
  );
}
