
import 'package:dashboard/utils/app_locale.dart';
import 'package:dashboard/utils/app_style.dart';
import 'package:dashboard/utils/custColors.dart';
import 'package:dashboard/widget/Scaffold_widget.dart';
import 'package:flutter/material.dart';

import '../widget/Appbar/appbar_common.dart';
import '../widget/asset_img/asset_image_show.dart';
import '../widget/button/cus_navigateBtn.dart';
import '../widget/card/CircleAvatar_photo.dart';
import '../widget/custom_slider_banner/custom_slider_banner.dart';

class Main_homeScreen extends StatefulWidget {
  const Main_homeScreen({super.key});

  @override
  State<Main_homeScreen> createState() => _Main_homeScreenState();
}

class _Main_homeScreenState extends State<Main_homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold_widget(
        appBar: MainAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          custom_slider_banner(ontap: (value){},),
                          cus_size_box().sizedBox_30,
                          Text("WELCOME TO",style: App_style().text_12_textColor_PR,),
                          cus_size_box().sizedBox_5,
                          Text("MANDAN PARIVAR",style: App_style().text_14_textColor_PR,),
                          cus_size_box().sizedBox_20,
                          Cus_CircleAvatar().buildCircleImage(radius: 110,photoLink: AppImages.about_pic_icon,fileType: "asset"),
                          cus_size_box().sizedBox_20,
                          Text("Sagittis nisl rhoncus mattis rhoncus urnanequ viverra just"+
                              "o nec.Habitasse faucibus vitaealiquet ulla mcorper. Facilis"+
                              "is fringilla in ullamcorper eget null a facilisi sagittis purus"+
                              "quis nostrud etiam.Habitasse faucibus vitaealiquet ulla mcorper"
                            ,style: App_style().text_14_textColor_PR,),
                          cus_size_box().sizedBox_20,
                          cus_navigateBtn(onPressed: (){},text: "LEARN MORE",)
                        ],
                      ),
                    ),
                    cus_size_box().sizedBox_30,
                    Container(
                      color: AppColors.light1greyColor,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25),
                      child: Column(
                        children: [
                          Text("POSTS",style: App_style().text_12_textColor_PR,),
                          cus_size_box().sizedBox_5,
                          Text("MANDAN PARIVAR",style: App_style().text_14_textColor_PR,),
                          cus_size_box().sizedBox_20,
                          Row(
                            children: [
                              Expanded(child: PostCard(
                                title: "Guru Purnima Special Pravachan |",
                                date: "24 January 2024",
                                img: AppImages.post1_pic,
                              )),
                              const SizedBox(width: 8,),
                              Expanded(child: PostCard(
                                title: "પ્રશમરતિ વિમર્શ 15 |Prashamrati Vimarsh 15 |",
                                date: "24 January 2024",
                                img: AppImages.post2_pic,
                              )),
                            ],
                          ),
                          cus_size_box().sizedBox_20,
                          cus_navigateBtn(onPressed: (){},text: "SEE MORE",),
                          cus_size_box().sizedBox_20,
                        ],
                      ),
                    )
                  ],
                ),
          ),
        ));
  }

  Widget PostCard({
    String date='',
    String title='',
    String img='',
}){
    return Stack(
      children: [
        Card(
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          color: AppColors.whiteColor,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: AppColors.bluelight1Color,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                ),
                height:  MediaQuery.of(context).size.height/11,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/17,),
              Text(date,style: App_style().text_11_textColor_PR,),
              cus_size_box().sizedBox_15,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(title,textAlign: TextAlign.center,maxLines:2,overflow: TextOverflow.ellipsis,style: App_style().text_14_textColor_PR,),
              ),
              cus_size_box().sizedBox_30,
            ],
          ),
        ),
        Positioned(
            top: 20,
            right: 15,
            left: 15,
            child:
            Container(
              height: MediaQuery.of(context).size.height/10,
              width:MediaQuery.of(context).size.width/3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image:  DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.fill
                  )
              ),
              alignment: Alignment.center,
              child: Asset_imge_show().SvgPicture_asset(AppImages.youtube_icon,width: 30,height: 30),
            )
        )
      ],
    );
  }
}
