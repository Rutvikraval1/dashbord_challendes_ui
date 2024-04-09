
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dashboard/utils/custColors.dart';
import 'package:flutter/material.dart';

import '../../utils/app_locale.dart';

class custom_slider_banner extends StatefulWidget {
  final Function ontap;

  const custom_slider_banner({super.key,required this.ontap});

  @override
  State<custom_slider_banner> createState() => _custom_slider_bannerState();
}


class _custom_slider_bannerState extends State<custom_slider_banner> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;

  List dynamic_image=[
    AppImages.banner_pic,
    AppImages.banner_pic,
    AppImages.banner_pic,
    AppImages.banner_pic,
  ];


  @override
  Widget build(BuildContext context) {
    return dynamic_image.isNotEmpty?Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width/1,
          height: MediaQuery.of(context).size.height / 3.8,
          child: CarouselSlider.builder(
            carouselController: _carouselController,
            itemCount:dynamic_image.length,
            itemBuilder: (context, index, int) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(dynamic_image[index]),
                fit: BoxFit.fill
              )
            ),
            ),
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 0.1,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  widget.ontap(index);
                  _current = index;
                });
              },
            ),
          ),
        ),
         Positioned(
          height:  MediaQuery.of(context).size.height / 3.8,
          left: 8,
          child:
        InkWell(
          onTap: (){
            _carouselController.previousPage();
          },
          child: const CircleAvatar(
            radius: 8,
            backgroundColor: AppColors.grey_transparent,
            child: Icon(Icons.arrow_back_ios_rounded,size: 12,color: AppColors.whiteColor,),
          ),
        ),
        ),
         Positioned(
           height:  MediaQuery.of(context).size.height / 3.8,
           right: 8,
           child:
           InkWell(
             onTap: (){
               _carouselController.nextPage();
             },
          child: const CircleAvatar(
            radius: 8,
            backgroundColor: AppColors.grey_transparent,
            child: Icon(Icons.arrow_forward_ios,size: 12,color: AppColors.whiteColor,),
          ),
        ),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width/1.1,
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dynamic_image.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _carouselController.animateToPage(entry.key),
                child: Container(
                  width: _current != entry.key?8:35,
                  height: 8,
                  margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 3.0),
                  decoration: BoxDecoration(
                    borderRadius: _current == entry.key?BorderRadius.circular(5):null,
                      shape: _current != entry.key?BoxShape.circle:BoxShape.rectangle,
                      color: _current != entry.key
                          ? AppColors.whiteColor
                          :AppColors.lightgrey.withOpacity(0.9)),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    ):const SizedBox();
  }
}